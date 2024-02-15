#ifndef TIMER_H
#define TIMER_H

class Timer
{
    public:
        void reset();
        double elapsed() const;
};

#endif