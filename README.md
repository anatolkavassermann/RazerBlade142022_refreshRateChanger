# refreshRateChanger
How to set up the program:

1. install .Net 6.0;
2. download and unzip the archive;
3. open the ptb.vbs file, then specify the full path to the refreshRateChanger.exe file (it is located in the folder ".....\RefreshRateChanger\RefreshRateChanger\bin\Debug\net6.0\RefreshRateChanger.exe";
4. Create a task in the task scheduler. What you need to specify when creating a task:
  * trigger - event -> system journal -> kernel power -> event code: 105;
  * action - wscript.exe, parameters: specifty path to ptb.vbs file;
  * in conditions, disable "running only when power is plugged in" (ot something similar to it).

Basically, that's all =)

