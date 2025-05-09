/**************************************************************************************************
* PROGRAM : imp_sales06
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

PROC PRINTTO LOG = "C:\dev\sales\log\sales06.log" NEW;
RUN;

PROC IMPORT OUT= WORK.SALES06 
            DATAFILE= "C:\dev\sales\data\raw\Sales06.xlsx" 
            DBMS=EXCEL REPLACE;
     RANGE="Sales01$"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;

PROC PRINTTO;
RUN;
