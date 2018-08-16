-module(hello_tezza_greeting_controller, [Req]).
-compile(export_all).

hello('GET', []) ->
  {output, "Hello, world!"}.
