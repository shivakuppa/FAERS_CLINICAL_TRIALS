/**************************************************************************************************
* PROGRAM : imp_sales01
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

PROC PRINTTO LOG = "C:\dev\sales\log\sales01.log" NEW;
RUN;

PROC IMPORT OUT= WORK.SALES01 
            DATAFILE= "C:\dev\sales\data\raw\Sales01.xls" 
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
