#ifndef STATEMODEL_H
#define STATEMODEL_H

#include <QObject>
#include <functional>

namespace ht {
  namespace state {

    /* States and events should just be integers */
    typedef int state_t;
    typedef int event_t;

    class StateModel : public QObject
    {
      Q_OBJECT
    public:
      explicit StateModel(QObject *parent = nullptr);

    state_t current_state;
    size_t nevents;
    event_t next_event;

     /* pointer to the FSM's transition function */
    std::function<state_t(StateModel *fsm,
                          event_t,
                          std::function<void(StateModel *)> *effect,
                          std::function<void(StateModel *)> *entry)> f_transition;

    /* Invoke an event handler for a given FSM */
    void handle_event (StateModel *fsm, event_t event);

    signals:


    };
  }
}

#endif // STATEMODEL_H
