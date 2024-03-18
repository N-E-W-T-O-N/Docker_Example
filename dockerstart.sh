#!/bin/bash
echo -e "\e[31mSTART CONTAINER D365BOT\e[0m"
cd /home/skmainadmin/D365Bot/
docker compose up -d --build
# echo -e "\e[31mSTART CONTAINER HINDALCOBOT\e[0m"
# cd /home/skmainadmin/HindalcoBot/
# docker compose up -d --build
echo -e "\e[31mSTART CONTAINER PetronasCopilot\e[0m"
cd /home/skmainadmin/Patronas/PetronasCopilot/
docker compose up -d --build
