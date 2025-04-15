/**************************************************************************************************
* PROGRAM : imp_sales08
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

PROC PRINTTO LOG = "C:\dev\sales\log\sales08.log" NEW;
RUN;

PROC IMPORT OUT= WORK.SALES06 
            DATAFILE= "C:\dev\sales\data\raw\Sales08.xml" 
            DBMS=XML REPLACE;
     		GETNAMES=YES;
RUN;

PROC PRINTTO;
RUN;
