/**************************************************************************************************
* PROGRAM : datastep_sales03
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

/**********************************************************************
*   PRODUCT:   SAS
*   VERSION:   9.4
*   CREATOR:   External File Interface
*   DATE:      16SEP15
*   DESC:      Generated SAS Datastep Code
*   TEMPLATE SOURCE:  (None Specified.)
***********************************************************************/
data WORK.SALES02;
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */
    infile 'C:\dev\sales\data\raw\Sales03.tsv' delimiter='09'x
        MISSOVER DSD lrecl=32767 firstobs=2;
    informat Order_ID best32.;
    informat Order_Date mmddyy10.;
    informat Customer_ID best32.;
    informat Customer_Name $10.;
    informat Address $15.;
    informat City $14.;
    informat State $2.;
    informat ZIP_Postal_Code best32.;
    informat Country_Region $3.;
    informat Salesperson $16.;
    informat Region $5.;
    informat Shipped_Date mmddyy10.;
    informat Shipper_Name $18.;
    informat Ship_Name $22.;
    informat Ship_Address $15.;
    informat Ship_City $14.;
    informat Ship_State $2.;
    informat Ship_ZIP_Postal_Code best32.;
    informat Ship_Country_Region $3.;
    informat Payment_Type $11.;
    informat Product_Name $22.;
    informat Category $19.;
    informat Unit_Price $1.;
    informat Quantity best32.;
    informat Revenue best32.;
    informat Shipping_Fee $11.;
    informat VAR27 best32.;
    informat VAR28 best32.;
    informat VAR29 best32.;
    format Order_ID best12.;
    format Order_Date mmddyy10.;
    format Customer_ID best12.;
    format Customer_Name $10.;
    format Address $15.;
    format City $14.;
    format State $2.;
    format ZIP_Postal_Code best12.;
    format Country_Region $3.;
    format Salesperson $16.;
    format Region $5.;
    format Shipped_Date mmddyy10.;
    format Shipper_Name $18.;
    format Ship_Name $22.;
    format Ship_Address $15.;
    format Ship_City $14.;
    format Ship_State $2.;
    format Ship_ZIP_Postal_Code best12.;
    format Ship_Country_Region $3.;
    format Payment_Type $11.;
    format Product_Name $22.;
    format Category $19.;
    format Unit_Price $1.;
    format Quantity best12.;
    format Revenue best12.;
    format Shipping_Fee $11.;
    format VAR27 best12.;
    format VAR28 best12.;
    format VAR29 best12.;
    input
        Order_ID
        Order_Date
        Customer_ID
        Customer_Name $
        Address $
        City $
        State $
        ZIP_Postal_Code
        Country_Region $
        Salesperson $
        Region $
        Shipped_Date
        Shipper_Name $
        Ship_Name $
        Ship_Address $
        Ship_City $
        Ship_State $
        Ship_ZIP_Postal_Code
        Ship_Country_Region $
        Payment_Type $
        Product_Name $
        Category $
        Unit_Price $
        Quantity
        Revenue
        Shipping_Fee $
    ;
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */
run;
