/**************************************************************************************************
* PROGRAM : imp_ther06Q1
* PROGRAMMER : Shiva Kuppa
* VALIDATOR: Lajeeth
* DATE : 4/7/2025
* PURPOSE : C:\Users\karmo\OneDrive\Desktop\SAS\dev\faers\data\raw\2006
* SOURCE: C:\Users\karmo\OneDrive\Desktop\SAS\dev\faers\analysis
* 
*
* MODIFYING HISTORY
***************************************************************************************************
DATE:                   NAME:                       REASON FOR MODIFICATION:
***************************************************************************************************
*/

PROC PRINTTO LOG = "C:\Users\karmo\OneDrive\Desktop\SAS\dev\faers\log\ther06Q1.log" NEW;
RUN;

PROC IMPORT OUT= WORK.Ther06Q1 
            DATAFILE= "C:\Users\karmo\OneDrive\Desktop\SAS\dev\faers\data\raw\2006\THER06Q1.TXT" 
            DBMS=DLM REPLACE;
     DELIMITER='24'x; 
     GETNAMES=YES;
     DATAROW=2; 
     GUESSINGROWS=1000; 
RUN;

PROC PRINTTO;
RUN;
