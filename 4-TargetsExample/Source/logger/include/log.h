enum class logType{
    MESSAGE,
    WARNING,
    FATAL_ERROR
};

void log_data(const char* message, logType lt);