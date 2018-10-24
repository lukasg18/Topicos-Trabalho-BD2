now=$(date +"%T")
psql -U postgres -h localhost -d BD2 -1 -f sql_insertCompleto.sql
echo "inicio do processo dos dados" $now
fim=$(date +"%T")
echo "fim do processo dos dados" $fim