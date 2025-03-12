#include <iostream>
#include <vector>
#include <list>
using namespace std;
 
//以coco数据集为例
string names[] = {"person", "bicycle", "car", "motorcycle", "airplane", "bus", "train", "truck", "boat", "traffic light",
        "fire hydrant", "stop sign", "parking meter", "bench", "bird", "cat", "dog", "horse", "sheep", "cow",
        "elephant", "bear", "zebra", "giraffe", "backpack", "umbrella", "handbag", "tie", "suitcase", "frisbee",
        "'skis'", "'snowboard'", "'sports ball'", "'kite'", "'baseball bat'", "'baseball glove'", "'skateboard'", "'surfboard'",
        "'tennis racket'", "'bottle'", "'wine glass'", "'cup'", "'fork'", "'knife'", "'spoon'", "'bowl'", "'banana'", "'apple'",
        "'sandwich'", "'orange'", "'broccoli'", "'carrot'", "'hot dog'", "'pizza'", "'donut'", "'cake'", "'chair'", "'couch'",
        "'potted plant'", "'bed'", "'dining table'", "'toilet'", "'tv'", "'laptop'", "'mouse'", "'remote'", "'keyboard'", "'cell phone'",
        "'microwave'", "'oven'", "'toaster'", "'sink'", "'refrigerator'", "'book'", "'clock'", "'vase'", "'scissors'", "'teddy bear'",
        "'hair drier'", "'toothbrush'"};
 
struct BOX
{
    float x;
    float y;
    float width;
    float height;
};
 
struct Object
{
    BOX box;    // lu点和wh
    int label;
    float confidence;  //这里的confidence实际指的是score 即 objectness*confidence
};
 
bool cmp(Object &obj1, Object &obj2){
    return obj1.confidence > obj2.confidence;
}
 
float iou_of(const Object &obj1, const Object &obj2)
{
    float x1_lu = obj1.box.x;
    float y1_lu = obj1.box.y;
    float x1_rb = x1_lu + obj1.box.width;
    float y1_rb = y1_lu + obj1.box.height;
    float x2_lu = obj2.box.x;
    float y2_lu = obj2.box.y;
    float x2_rb = x2_lu + obj2.box.width;
    float y2_rb = y2_lu + obj2.box.height;
    //交集左上角坐标i_x1, i_y1
    float i_x1 = std::max(x1_lu, x2_lu);
    float i_y1 = std::max(y1_lu, y2_lu);
    //交集右下角坐标i_x2, i_y2
    float i_x2 = std::min(x1_rb, x2_rb);
    float i_y2 = std::min(y1_rb, y2_rb);
    //交集框宽高
    float i_w = i_x2 - i_x1;
    float i_h = i_y2 - i_y1;
    //并集左上角坐标
    float o_x1 = std::min(x1_lu, x2_lu);
    float o_y1 = std::min(y1_lu, y2_lu);
    //并集右下角坐标
    float o_x2 = std::max(x1_rb, x2_rb);
    float o_y2 = std::max(y1_rb, y2_rb);
    //并集宽高
    float o_w = o_x2 - o_x1;
    float o_h = o_y2 - o_y1;
 
    return (i_w*i_h) / (o_w*o_h);
}
 
std::vector<int> hardNMS(std::vector<Object> &input, std::vector<Object> &output, float iou_threshold, unsigned int topk)
{  //Object只有confidence和label
    const unsigned int box_num = input.size(); 
    std::vector<int> merged(box_num, 0);
    std::vector<int> indices;
 
    if (input.empty())
        return indices;
    std::vector<Object> res;
    //先对bboxs按照conf进行排序
    std::sort(input.begin(), input.end(),
            [](const Object &a, const Object &b)
            { return a.confidence > b.confidence; });   //[]表示C++中的lambda函数
    
    unsigned int count = 0;
    for (unsigned int i = 0; i < box_num; ++i)
    {   //按照conf依次遍历bbox
        if (merged[i])
            continue;
        //如果已经被剔除，continue
        Object buf;
        buf = input[i];
        merged[i] = 1; //剔除当前bbox
 
        //由于后面的置信度低，只需要考虑当前bbox后面的即可
        for (unsigned int j = i + 1; j < box_num; ++j)
        {
            if (merged[j])
                continue;
 
            float iou = static_cast<float>(iou_of(input[j], input[i]));
            //计算iou
            if (iou > iou_threshold)
            { //超过阈值认为重合，剔除第j个bbox，
                merged[j] = 1;
            }
        }
        indices.push_back(i);
        res.push_back(buf); //将最高conf的bbox填入结果
 
        // keep top k
        //获取前k个输出，这个应该是针对密集输出的情况，此时input已经做了conf剔除
        count += 1;
        if (count >= topk)
            break;
    }
    output.swap(res);
 
    return indices;
}
 
float sigmoid(float x)
{
    return 1.0 / (exp(-x) + 1.0);
}