#include "logger/include/log.h"
#include <iostream>

void log_data(const char* message, logType lt){
    auto value  = ((10 <=> 20) > 0);

    switch (lt)
    {
    case logType::MESSAGE:
        std::cout << "Message : " << message << std::endl;
        break;
    case logType::WARNING:
        std::cout << "Warning : " << message << std::endl;
        break;
    case logType::FATAL_ERROR:
        std::cout << "Fatal Error : " << message << std::endl;
        break;
    
    default:
        break;
    }
}