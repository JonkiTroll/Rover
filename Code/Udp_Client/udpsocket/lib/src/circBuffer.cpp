//
// Created by jon on 5.5.2021.
//





#include "circBuffer.h"

template<class T>

void  circBuffer<T>::put(T item){
    std::lock_guard<std::mutex> lock(mutex_);

    buf_[head_] = item;

    if(full_){
        tail_ = (tail_ + 1) % max_size_;
    }

    head_ = (head_ + 1) % max_size_;
    full_ = head_ == tail_;
}

template<class T>
T circBuffer<T>::get(){

    std::lock_guard<std::mutex> lock(mutex_);

    if(empty())
    {
        return T();
    }

    auto val = buf_[tail_];
    full_ = false;
    tail_ = (tail_ + 1) % max_size_;

    return val;
}

template<class T>
void circBuffer<T>::reset(){
    std::lock_guard<std::mutex> lock(mutex_);
    head_ = tail_;
    full_ = false;
}

template<class T>
bool circBuffer<T>::empty() const{
    return (!full_ && (head_ == tail_));
}

template<class T>
bool circBuffer<T>::full() const{
    return full_;
}

template<class T>
size_t circBuffer<T>::capacity() const{
    return max_size_;
}

template<class T>
size_t circBuffer<T>::size() const{
    size_t size = max_size_;

    if (!full_){
        if (head_ >= tail_){
            size = head_ - tail_;
        } else {
            size = max_size_ + head_ - tail_;
        }
    }

    return size;
}