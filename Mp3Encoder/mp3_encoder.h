//
//  mp3_encoder.hpp
//  Mp3Encoder
//
//  Created by wenqi on 2018/5/26.
//  Copyright © 2018年 wenqi. All rights reserved.
//

#ifndef mp3_encoder_hpp
#define mp3_encoder_hpp

#include "lame.h"

/**
 * 视频编码
 */
class Mp3Encoder {
private:
    FILE* pcmFile;
    FILE* mp3File;
    lame_t lameClient;
    
public:
    Mp3Encoder();
    ~Mp3Encoder();
    int Init(const char* pcmFilePath, const char *mp3FilePath, int sampleRate, int channels, int bitRate);
    void Encode();
    void Destory();
};

#endif /* mp3_encoder_hpp */
