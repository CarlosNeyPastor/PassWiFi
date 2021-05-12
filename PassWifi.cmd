@echo off

netsh wlan show profile

echo. 
set/p nombre= Escribe el nombre de la red: 
netsh wlan show profile %nombre% key=clear>%nombre%.txt
echo Se creo un documento %nombre%.txt con los datos.
timeout 5
exit