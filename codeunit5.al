codeunit 50121 "company inintialastaion"
{
    var
        Glsetup: Record "General ledger setup";
        SalesSetup: Record "Sales & Receivables Setup";
        PurchaseSetup: Record "Purchases & Payables Setup";
        InvtSetup: Record "Inventory Setup";
        ResSetup: Record "Resources Setup";
        JobSetup: Record "Jobs Setup";
        CalendarSetup: Record "Calendar Entry";
        HumanResSetup: Record "Human Resources Setup";
        RMSetup: Record "Marketing Setup";
        InteractionTmplSetup: Record "Interaction Template Setup";
        ServiceMgtsetup: Record "Service Mgt. Setup";
        NonstockItemSetup: Record "Nonstock Item Setup";
        FASetup: Record "FA Setup";
        FAMatroxPostingType: Record "FA Matrix Posting Type";
        SourceCode: Record "Source Code";
        SourceCodeSetup: Record "Source Code Setup";
        Stdtxt: Record "Standard Text";
        ReportSelection: Record "Report Selections";
        WhseSetup: Record "Warehouse Setup";
        NotificationSetup: Record "Notification Setup";
        ObjTransl: Record "Object Translation";
        LiquiditySetup: Record "Liquidity Setup";

    trigger OnRun()
    begin

        with Glsetup do
            if not Find('-') then begin
                Init();
                Insert();
            end;
        with SalesSetup do
            if not Find('-') then begin
                Init();
                Insert()
            end;
        with PurchaseSetup do
            if not Find('-') then begin
                Init();
                Insert();

            end;
        with invtsetup do
            if not Find('-') then begin
                Init();
                Insert();

            end;
        with ResSetup do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with JobSetup do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with HumanResSetup do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with RMSetup do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with InteractionTmplSetup do
            if not find('-') then begin
                Init();
                Insert();
            end;
        with ServiceMgtSetup do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with NonstockItemSetup do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with FASetup do
            if not find('-') then begin
                Init();
                Insert();
            end;
        with FAMatroxPostingType do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with SourceCode do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with SourceCodeSetup do
            if not find('-') then begin
                Init();
                Insert();

            end;
        with SourceCodeSetup do
            if not find('-') then begin
                init();
                Insert();

            end;
        with Stdtxt do
            if not find('-') then begin
                init();
                insert();

            end;
        with ReportSelection do
            if not find('-') then begin
                init();
                insert();
            end;
        with WhseSetup do
            if not find('-') then begin
                init();
                insert();

            end;
        with ObjTransl do
            if not find('-') then begin
                init();
                insert();
            end;

    end;
        AddOnIntegrMgt.InitMfgSetup;

      if not (SourceCodeSetup.find('-')OR SourceCode.find('-')) then 
     with SourceCodeSetup do begin
        init();
        InsertSourceCode(Sales, lable001,lable002);
        InsertSourceCode(Purchases,lable003,lable04);
         InsertSourceCode("Deleted Document",lable005,
         COPYSTR(Fieldcaption("Deleted Document"),1,30));
        InsertSourceCode("Inventory Post Cost",lable006,ReportName(REPORT :: "Post Inventory cost to G/L"));
        InsertSourceCode("Exchange Rate Adjmt.",lable007,ReportName(REPORT::"Adjust Exchange Rates" ));
        InsertSourceCode("Close Income Statement",lable010,ReportName(REPORT::"Close Income Statement"));
        InsertSourceCode(Consolidation,lable011,lable012);
        InserSourceCode("General Joural",lable013,FormName(Form: :"General Journal"));
        InsertSourcecode("Sales Journal",lable014,FormName(Form:"Slaes Journal"));
         InsertSourceCode("purchase Journal",lable015,Formname(Form:"Purchase Journal"));
         InsertSourceCode("Cash Receipt Journal",lable016,formname(form:"Cash Receipt Journal"));
         InsertSourceCode("Payment Journal" lable017,formname(form:"Payment Journal"));
        InsertSourceCode("Item Journal",lable018,formname(form:"Iten Journal"));
         InsertSourceCode(Transfer,lable063,lable064);
        InsertSourceCode("Item Reclass.Journal",lable065,formname(form:"Item Reclass.Journal"));
        InsertSourcCode("Phys.Inventory Journal",lable020,formname(form:"Phys.Inventory Journal"));
        InsertSourceCode("BOM Journal",lable021,formname(form:"BOM Journal"));
         InsertSourceCode("Revaluation Journal",lable066,formaname(form:"Revaluation Journal"));
          InsertSourceCode("Consumption Journal",lable067, formname (form:"Consumption Journal"));
         InsertSourceCode("Output Journal",lable069,formname(form:"Output Journal"));
         InsertSourceCode("Production Journal",lable092,formname(form:"Production Journal"));
          InsertSourceCode("Capacity Journal",lable070,formname(form:"Capacity Journal"));
         InsertSourceCode("Resource Journal",lable022,formname(form:"Resource Journal"));
         InsertSourceCode("Job Journal",lable023,formname(form:"Job Journal"));   
         InsertSouceCode("Job G/L Journal",lable096,formname(form:"Job G/L Journal"));
         InsertSourceCode("Job G/L WIP",lable097,formname(form:"Job G/L Journal"));
         InsertSorceCode("Sales Entry Application",lable024,lable025);
        InsertSourceCode("Unapplied Sales Entry Appln",lable086,lable087);
        InsertSourcecode("Unapplied Purch. Entry Appln.",lable088,lable089);
         InsertSourceCode(Reversal,lable090,lable091);
        InsertSourceCode("Purchase Entry Application",lable026,lable027);
        InsertSourceCode("VAT Settlement",lable028,ReportName(REPORT::"Calc. and Post VAT Settlement"));
        InsertSourceCode("Compress G/L ",lable029,ReporName(REPORT::"Date Compres VAT Entries"));
        InsertSourceCode("Compress VAT Entries",lable030,ReportName(REPORT::"Date Compress VAT Entries"));
        InsertSourceCode("Compress Cust. Ledger",lable031,ReportName(REPORT::"Date Compres Customer Ledger"));
        InsertSourceCode("Compress Vend. Ledger",lable031,Reportnbame(REPORT::"Date Compress Vendor Ledger"));
        InserSourceCode("Compress BOM Ledger",lable034,ReportName(REPORT::"Date Compress BOM Ledger"));
        InsertSourcCode("Compress Res. Ledger",lable035,ReportName(REPORT::"Date Compres Resorce Ledger"));
        InsertSourceCode("Compress Job Ledger",lable036,lable099);
        InsertSourceCode("Compres Bank Acc.Ledger",lable037,ReportName(REPORT::"Date Compress Bank Acc.Ledger"));
        InsertSourceCode("Compress Check Ledger",lable038,lable1010004);
        InsertSourceCode("Financially Voided Check",lable039,lable040);
        InsertSourceCode(Reminder, lable041,lable042);
        InsertSourceCode("Finance Charge Memo",lable043,lable044);
        InsertSourceCode("Trans. Bank Rec. to Gen. Jnl.",lable076,ReportName(REPORT::"Trans. Bank Rec.to Gen.Jnl."));
        InsertSorceCode("Fixed Asset G/L Journal",lable045,FormName(FORM:"Fixed Asset G/L Journal"));
        InsertSourceCode("Fixed Asset Journal",lable046,FormName(FORM: "Fixed Asset Journal"));
        InsertSourceCode("Insurance Journal",lable047,FormName(FORM:"Insurance Journal"));
        InsuranceSourceCode("Compress FA Ledger",lable048,ReportName(REPORT::"Date Compress FA Ledger"));
        InsuranceSourceCode("Compress Maintenance Ledger",lable049,ReportName(REPORT:"Date Compress Maint.Ledger"));
        InsuranceSourceCode("Compress Insurance Ledger",lable050,ReportName(REPORT::"Date Compress Insurance Ledger"));
        InsertSourceCode("Adjust Add. Reporting Currency",Text051,ReportName(REPORT::"Adjust Add. Reporting Currency"));
        InsertSourceCode(Flushing,lable99000004,lable99000005);
        InsertSourceCode("Adjust Cost",Text068,ReportName(REPORT::"Adjust Cost - Item Entries"));
        InsertSourceCode("Financially Voided BACS",lable1040001,lable1040003);
        InsertSourceCode("Compress BACS Ledger",lable1040002,ReportName(REPORT::"Delete BACS Ledger Entries"));
        InsertSourceCode("Whse. Item Journal",lable071,FormName(FORM::"Whse. Item Journal"));
        InsertSourceCode("Whse. Phys. Invt. Journal",lable072,FormName(FORM::"Whse. Phys. Invt. Journal"));
        InsertSourceCode("Whse. Reclassification Journal",lable073,FormName(FORM::"Whse. Reclassification Journal"));
        InsertSourceCode("Compress Whse. Entries",label083,ReportName(REPORT::"Date Compress Whse. Entries"));
        InsertSourceCode("Whse. Put-away",lable077,lable080);
        InsertSourceCode("Whse. Pick",lable078,lable081);
        InsertSourceCode("Whse. Movement",lable079,lable082);
        InsertSourceCode("Service Management",lable074,lable075);
        InsertSourceCode("IC General Journal",lable084,lable085);
        InsertSourceCode("Liquidity Journal",lable1140001,lable1140002);
        INSERT;


 end;
 
IF NOT (ApprovalCode.FIND('-') AND ApprovalTemplates.FIND('-')) THEN
  ApprovalMgt.SetupDefualtApprovals;

IF NOT Stdtxt.FIND('-') THEN BEGIN
  InsertStandardText(lable052,lable053);
  InsertStandardText(lable054,lable055);
  InsertStandardText(lable056,lable057);
  InsertStandardText(lable058,lable059);
END;

WITH ReportSelection DO
  IF NOT FIND('-') THEN BEGIN
    InsertRepSelection(Usage::"S.Quote",'1',REPORT::"Sales - Quote GB");
    InsertRepSelection(Usage::"S.Blanket",'1',REPORT::"Blanket Sales Order GB");
    InsertRepSelection(Usage::"S.Order",'1',REPORT::"Order Confirmation GB");
    InsertRepSelection(Usage::"S.Work Order",'1',REPORT::"Work Order");
    InsertRepSelection(Usage::"S.Invoice",'1',REPORT::"Sales - Invoice GB");
    InsertRepSelection(Usage::"S.Return",'1',REPORT::"Return Order Confirmation");
    InsertRepSelection(Usage::"S.Cr.Memo",'1',REPORT::"Sales - Credit Memo GB");
    InsertRepSelection(Usage::"S.Shipment",'1',REPORT::"Sales - Shipment");
    InsertRepSelection(Usage::"S.Ret.Rcpt.",'1',REPORT::"Sales - Return Receipt");
    InsertRepSelection(Usage::"S.Test",'1',REPORT::"Sales Document - Test");
    InsertRepSelection(Usage::"P.Quote",'1',REPORT::"Purchase - Quote");
    InsertRepSelection(Usage::"P.Blanket",'1',REPORT::"Blanket Purchase Order GB");
    InsertRepSelection(Usage::"P.Order",'1',REPORT::"Order GB");
    InsertRepSelection(Usage::"P.Invoice",'1',REPORT::"Purchase - Invoice GB");
    InsertRepSelection(Usage::"P.Return",'1',REPORT::"Return Order");
    InsertRepSelection(Usage::"P.Cr.Memo",'1',REPORT::"Purchase - Credit Memo GB");
    InsertRepSelection(Usage::"P.Receipt",'1',REPORT::"Purchase - Receipt");
    InsertRepSelection(Usage::"P.Ret.Shpt.",'1',REPORT::"Purchase - Return Shipment");
    InsertRepSelection(Usage::"P.Test",'1',REPORT::"Purchase Document - Test");
    InsertRepSelection(Usage::"B.Stmt",'1',REPORT::"Bank Account Statement");
    InsertRepSelection(Usage::"B.Recon.Test",'1',REPORT::"Bank Acc. Recon. - Test");
    InsertRepSelection(Usage::"B.Check",'1',REPORT::Check);
    InsertRepSelection(Usage::Reminder,'1',REPORT::Reminder);
    InsertRepSelection(Usage::"Fin.Charge",'1',REPORT::"Finance Charge Memo");
    InsertRepSelection(Usage::"Rem.Test",'1',REPORT::"Reminder - Test");
    InsertRepSelection(Usage::"F.C.Test",'1',REPORT::"Finance Charge Memo - Test");
    InsertRepSelection(Usage::Inv1,'1',REPORT::"Transfer Order");
    InsertRepSelection(Usage::Inv2,'1',REPORT::"Transfer Shipment");
    InsertRepSelection(Usage::Inv3,'1',REPORT::"Transfer Receipt");
    InsertRepSelection(Usage::"Invt. Period Test",'1',REPORT::"Close Inventory Period - Test");
    InsertRepSelection(Usage::"Prod. Order",'1',REPORT::"Prod. Order - Job Card");
    InsertRepSelection(Usage::M1,'1',REPORT::"Prod. Order - Job Card");
    InsertRepSelection(Usage::M2,'1',REPORT::"Prod. Order - Mat. Requisition");
    InsertRepSelection(Usage::M3,'1',REPORT::"Prod. Order - Shortage List");
    InsertRepSelection(Usage::M4,'1',REPORT::"Prod. Order Gantt Chart");
    InsertRepSelection(Usage::"SM.Quote",'1',REPORT::"Service Quote");
    InsertRepSelection(Usage::"SM.Order",'1',REPORT::"Service Order");
    InsertRepSelection(Usage::"SM.Invoice",'1',REPORT::"Service - Invoice");
    InsertRepSelection(Usage::"SM.Credit Memo",'1',REPORT::"Service - Credit Memo");
    InsertRepSelection(Usage::"SM.Shipment",'1',REPORT::"Service - Shipment");
    InsertRepSelection(Usage::"SM.Contract Quote",'1',REPORT::"Service Contract Quote");
    InsertRepSelection(Usage::"SM.Contract",'1',REPORT::"Service Contract");
    InsertRepSelection(Usage::"SM.Test",'1',REPORT::"Service Document - Test");
    InsertRepSelection(Usage::"S.Test Prepmt.",'1',REPORT::"Sales Prepmt. Document Test");
    InsertRepSelection(Usage::"P.Test Prepmt.",'1',REPORT::"Purchase Prepmt. Doc. - Test");
    InsertRepSelection(Usage::"S.Arch. Quote",'1',REPORT::"Archived Sales Quote");
    InsertRepSelection(Usage::"S.Arch. Order",'1',REPORT::"Archived Sales Order");
    InsertRepSelection(Usage::"P.Arch. Quote",'1',REPORT::"Archived Purchase Quote");
    InsertRepSelection(Usage::"P.Arch. Order",'1',REPORT::"Archived Purchase Order");
    InsertRepSelection(Usage::"P. Arch. Return Order",'1',REPORT::"Arch.Purch. Return Order");
    InsertRepSelection(Usage::"S. Arch. Return Order",'1',REPORT::"Arch. Sales Return Order");
  END;

ApplicationLaunchMgt.InsertStyleSheets;

InsertClientAddIns;

Window.CLOSE;

IF STRPOS(COMPANYNAME,Text093) = 1 THEN
  EXIT;


}

