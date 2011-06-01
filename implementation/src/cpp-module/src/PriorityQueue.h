#ifndef PRIORITYQUEUE_H_
#define PRIORITYQUEUE_H_

#include <queue>
#include <utility>

// nodes are stored with the key (hmax, depth) to use depth for tie-breaking
// this gives better (more) landmarks
typedef std::pair<int, int> QueueKey;
typedef std::pair<QueueKey, Variable *> QueueEntry;

class PriorityQueue {
public:
    bool empty();
    void push(Variable* value, int hmax, int depth);
    Variable *pop(int &hmax, int &depth);
    void decreaseKey(Variable* value, int hmax, int depth);
private:
    std::priority_queue<QueueEntry> queue;
};

inline bool PriorityQueue::empty() {
    return this->queue.empty();
}

inline void PriorityQueue::push(Variable* value, int hmax, int depth) {
    this->queue.push(std::make_pair(std::make_pair(hmax, depth), value));
}

inline Variable *PriorityQueue::pop(int &hmax, int &depth) {
    while (!this->empty()) {
        QueueEntry entry = this->queue.top();
        this->queue.pop();
        QueueKey &key = entry.first;
        Variable *value = entry.second;
        hmax = key.first;
        depth = key.second;
        if (value->hmax < hmax) {
            // the hmax value of this key was decreased after inserting it
            // this could be done with the min-heap operation decrease-key,
            // but it is faster to insert duplicates and ignore the ones with the old key
            continue;
        }
        return value;
    }
    return NULL;
}

inline void PriorityQueue::decreaseKey(Variable* value, int hmax, int depth) {
    // in this heap based approach duplicates are added and all previously pushed entries are ignored during pop
    value->hmax = hmax;
    this->push(value, hmax, depth);
}

#endif /* PRIORITYQUEUE_H_ */
