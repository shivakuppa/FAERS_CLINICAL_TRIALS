/**************************************************************************************************
* PROGRAM : imp_sales04
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

PROC PRINTTO LOG = "C:\Users\karmo\OneDrive\Desktop\SAS\dev\sales\log\sales04.log" NEW;
RUN;

PROC IMPORT OUT= WORK.SALES04 
            DATAFILE= "C:\Users\karmo\OneDrive\Desktop\SAS\dev\sales\data\raw\Sales04.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;

PROC PRINTTO;
RUN;
