### Tools that were used 
<ul>
<li>erlang version V7.3</li>
<li>intellij idea with erlang plugin installed
</ul>


### How to compile and run erlang file?<
cat example1.erl <br/>
<pre>
-module(example1).
-author("edutilos").

%% API
% hello world program
-export([start/0]).

start() ->
  io:fwrite("Hello, world!\n").

</pre>


//enter to the erlang shell<br/> 
erl <br/>
//now type <br/>
c(example1).  //that will compile example1.erl <br/>
//now execute start() method <br/> 
example1:start().<br/>