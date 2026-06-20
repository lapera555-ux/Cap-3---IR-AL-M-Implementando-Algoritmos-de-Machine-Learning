@echo off
chcp 65001 >nul
cls
echo =============================================================
echo  EXECUCAO COMPLETA - FARMTECH SEEDS CLASSIFIER
echo =============================================================
echo [1/4] Instalando dependencias...
call 00_instalar_dependencias.bat
if errorlevel 1 goto erro

echo [2/4] Validando estrutura...
python src\validar_entrega.py

echo [3/4] Executando pipeline de Machine Learning...
python src\pipeline_classificacao.py
if errorlevel 1 goto erro

echo [4/4] Abrindo dashboard Streamlit...
streamlit run src\dashboard.py
goto fim

:erro
echo.
echo ERRO: A execucao foi interrompida. Veja a mensagem acima.
echo Tente executar 00_instalar_dependencias.bat e depois 05_executar_tudo.bat novamente.

:fim
echo.
echo Processo finalizado.
