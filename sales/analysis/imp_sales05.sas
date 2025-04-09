/**************************************************************************************************
* PROGRAM : imp_sales05
* PROGRAMMER : Shiva Kuppa
* VALIDATOR: Lajeeth
* DATE : 4/7/2025
* PURPOSE : C:\Users\karmo\OneDrive\Desktop\SAS\dev\sales\data\raw\
* SOURCE: C:\Users\karmo\OneDrive\Desktop\SAS\dev\sales\analysis
* 
*
* MODIFYING HISTORY
***************************************************************************************************
DATE:                   NAME:                       REASON FOR MODIFICATION:
***************************************************************************************************
*/

PROC PRINTTO LOG = "C:\Users\karmo\OneDrive\Desktop\SAS\dev\sales\log\sales05.log" NEW;
RUN;

PROC IMPORT OUT= WORK.SALES05
            DATAFILE= "C:\Users\karmo\OneDrive\Desktop\SAS\dev\sales\data\raw\Sales05.prn" 
            DBMS=DLM REPLACE;
     DELIMITER='09'x; 
     GETNAMES=YES;
     DATAROW=2; 
     GUESSINGROWS=1000; 
RUN;

PROC PRINTTO;
RUN;
