/**************************************************************************************************
* PROGRAM : imp_sales02
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

PROC PRINTTO LOG = "C:\dev\sales\log\sales02.log" NEW;
RUN;

PROC IMPORT OUT= WORK.SALES02 
            DATAFILE= "C:\dev\sales\data\raw\Sales02.txt" 
            DBMS=DLM REPLACE;
     DELIMITER='24'x; 
     GETNAMES=YES;
     DATAROW=2; 
     GUESSINGROWS=1000; 
RUN;

PROC PRINTTO;
RUN;
