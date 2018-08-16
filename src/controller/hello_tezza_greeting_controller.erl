-module(hello_tezza_greeting_controller, [Req]).
-compile(export_all).

hello('GET', []) ->
  {ok, [{greeting, "Hello, world!"}]}.

list('GET', []) ->
  Greetings = boss_db:find(greeting, []),
  {ok, [{greetings, Greetings}]}.
