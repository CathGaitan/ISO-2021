#!/bin/bash
ls | tr 'a-z''A-Z' 'A-Z''a-z'| tr -d 'aA'
exit 0
