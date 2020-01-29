## WIP snap for GST

Currently:

  * Had to yoink a line which tries to determine updates from flathub
  * Injected deb of libsensors5 from disco because the app needs 5 over libsensors4 (not a good hack, should build from source or wait for core20)
  * App fails to launch:

```
CRITICAL: Uncaught exception
Traceback (most recent call last):
  File "/snap/gst/x1/lib/python3.6/site-packages/rx/scheduler/mainloop/gtkscheduler.py", line 48, in timer_handler
    sad.disposable = self.invoke_action(cast(typing.ScheduledAction, action), state=state)
  File "/snap/gst/x1/lib/python3.6/site-packages/rx/scheduler/scheduler.py", line 103, in invoke_action
    ret = action(self, state)
  File "/snap/gst/x1/lib/python3.6/site-packages/rx/core/observer/scheduledobserver.py", line 63, in run
    work()
  File "/snap/gst/x1/lib/python3.6/site-packages/rx/core/observer/scheduledobserver.py", line 28, in action
    self.observer.on_next(value)
  File "/snap/gst/x1/lib/python3.6/site-packages/rx/core/observer/autodetachobserver.py", line 26, in on_next
    self._on_next(value)
  File "/snap/gst/current/usr/lib/python3.6/site-packages/gst/presenter/main_presenter.py", line 145, in <lambda>
    ).subscribe(on_next=lambda _: (self.main_view.init_system_info(), self._start_refresh()),
  File "/snap/gst/current/usr/lib/python3.6/site-packages/gst/presenter/main_presenter.py", line 197, in _start_refresh
    refresh_interval = self._settings_interactor.get_int('settings_refresh_interval')
  File "/snap/gst/current/usr/lib/python3.6/site-packages/gst/interactor/settings_interactor.py", line 56, in get_int
    setting: Setting = Setting.get_or_none(key=key)
AttributeError: type object 'Setting' has no attribute 'get_or_none'
```