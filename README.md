We've all been in a situation where we waited for a long time for a command to finish, only for it to fail. When that happens, I scream. And so one day I thought: what if the computer screamed too? To that effect, I bring you `scream_on_fail` (or `sof` for short)!

Clone the repository and run `chmod +x install.sh && ./install.sh`. This copies the scream file and the `sof` script to a directory on your `PATH` (`$HOME/bin` by default — edit the `TARGET_DIR` variable in `./install.sh` to change this).

When that is done, simply type `sof <COMMAND>` and see for yourself!
