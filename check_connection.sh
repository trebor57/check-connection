#!/bin/bash

# Check Connection to a designated AllStarLink node and reconnect if disconnected

# Set your AllStarLink node number and the target node number you want to check to the connection
MY_NODE=XXXXXX
TARGET_NODE=XXXXXX

# Check if the target node is connected
if ! /usr/sbin/asterisk -rx "rpt lstats $MY_NODE" | grep -q "$TARGET_NODE"; then
  echo "Node $MY_NODE is not connected to node $TARGET_NODE. Reconnecting..."
  /usr/sbin/asterisk -rx "rpt fun $MY_NODE *3$TARGET_NODE"
else
   echo "Node $MY_NODE is already connected to node $TARGET_NODE."
 fi

 # if you want to add another node to always connect to, then make sure to have these lines added.  If not, delete them
MY_NODE=xxxxxx
TARGET_NODE=xxxxxx

# Check if the target node is connected
if ! /usr/sbin/asterisk -rx "rpt lstats $MY_NODE" | grep -q "$TARGET_NODE"; then
  echo "Node $MY_NODE is not connected to node $TARGET_NODE. Reconnecting..."
  /usr/sbin/asterisk -rx "rpt fun $MY_NODE *3$TARGET_NODE"
else
  echo "Node $MY_NODE is already connected to node $TARGET_NODE."
 fi

MY_NODE=61172
TARGET_NODE=620303

# Check if the target node is connected
if ! /usr/sbin/asterisk -rx "rpt lstats $MY_NODE" | grep -q "$TARGET_NODE"; then
  echo "Node $MY_NODE is not connected to node $TARGET_NODE. Reconnecting..."
  /usr/sbin/asterisk -rx "rpt fun $MY_NODE *3$TARGET_NODE"
else
  echo "Node $MY_NODE is already connected to node $TARGET_NODE."
 fi
