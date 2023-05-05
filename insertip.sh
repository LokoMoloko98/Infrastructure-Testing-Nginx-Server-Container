#!/bin/bash
filename='index.html'
vim -n -E $filename << COMMAND
:58,59s!^!                <p class="p404" data-depth="0.50">The container is successfully deployed at host $(hostname -f)</p>!
.
:x
COMMAND