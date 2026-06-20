@echo off
chcp 65001 >nul
cls
echo =============================================================
echo  FARMTECH SOLUTIONS - CLASSIFICACAO INTELIGENTE DE GRAOS
echo  FASE 04 / CTWP / Cap3 - Scikit-learn
echo =============================================================
echo.
echo 1 - Executar projeto completo
echo 2 - Instalar dependencias
echo 3 - Baixar/carregar dataset
echo 4 - Rodar pipeline de Machine Learning
echo 5 - Abrir dashboard Streamlit
echo 6 - Validar estrutura da entrega
echo.
set /p opcao=Escolha uma opcao: 
if "%opcao%"=="1" call 05_executar_tudo.bat
if "%opcao%"=="2" call 00_instalar_dependencias.bat
if "%opcao%"=="3" python src\download_dataset.py
if "%opcao%"=="4" python src\pipeline_classificacao.py
if "%opcao%"=="5" streamlit run src\dashboard.py
if "%opcao%"=="6" python src\validar_entrega.py
