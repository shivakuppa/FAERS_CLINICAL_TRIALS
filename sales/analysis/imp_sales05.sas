/**************************************************************************************************
* PROGRAM : imp_sales05
* PROGRAMMER : Shiva Kuppa
* VALIDATOR: Lajeeth
* DATE : 4/7/2025
* PURPOSE : C:\dev\sales\data\raw\
* SOURCE: C:\dev\sales\analysis
* 
*
* MODIFYING HISTORY
***************************************************************************************************
DATE:                   NAME:                       REASON FOR MODIFICATION:
***************************************************************************************************
*/

PROC PRINTTO LOG = "C:\dev\sales\log\sales05.log" NEW;
RUN;

PROC IMPORT OUT= WORK.SALES05
            DATAFILE= "C:\dev\sales\data\raw\Sales05.prn" 
            DBMS=DLM REPLACE;
     DELIMITER='09'x; 
     GETNAMES=YES;
     DATAROW=2; 
     GUESSINGROWS=1000; 
RUN;

PROC PRINTTO;
RUN;
