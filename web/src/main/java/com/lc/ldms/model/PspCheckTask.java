package com.lc.ldms.model;

import java.math.BigDecimal;

public class PspCheckTask {
    private String pspTaskNo;

    private String cusMngName;

    private String cusMngId;

    private String modelNo;

    private String cusId;

    private String cusName;

    private String cusType;

    private String contId;

    private String billId;

    private String chkType;

    private Long chkNum;

    private BigDecimal chkBln;

    private String crtDate;

    private String rqrFinDate;

    private String realFinDate;

    private String taskProBrId;

    private String taskProBrName;

    private String tskProId;

    private String tskProName;

    private String inputBrId;

    private String inputBrName;

    private String taskExeId;

    private String taskExeName;

    private String mngBrId;

    private String mngBrName;

    private String chkState;

    private String approveStatus;

    private String modifyInd;

    private String cusAssort;

    private String cusAssortReason;

    private String lmtPlanDesc;

    private String checkFinallyCon;

    private String mngLmtPlan;

    private String meetPersons;

    private String chkPlace;

    private String chkDate;

    private String prdCode;

    private String prdName;

    private String isFeedBack;

    private String feedBack;

    private String cusValue;

    private String cusRisk;

    private String cusRiskReason;

    private String otherReason;

    private Short reportScore;

    private String allCreditReportAnalysis;

    private String cusIndValue;

    private String modifyDesc;

    private String suggest;

    private String isupper;

    private String lastModifyInd;

    private String lastApprove;

    private String lastCusRisk;

    private String lastMngLmtPlan;

    private String lastCusValue;

    private String approveEndDate;

    private String chkMode;

    private String approveOrg;

    private String hasAddtionalSuggest;

    private String addtionalSuggest;

    public String getPspTaskNo() {
        return pspTaskNo;
    }

    public void setPspTaskNo(String pspTaskNo) {
        this.pspTaskNo = pspTaskNo == null ? null : pspTaskNo.trim();
    }

    public String getCusMngName() {
        return cusMngName;
    }

    public void setCusMngName(String cusMngName) {
        this.cusMngName = cusMngName == null ? null : cusMngName.trim();
    }

    public String getCusMngId() {
        return cusMngId;
    }

    public void setCusMngId(String cusMngId) {
        this.cusMngId = cusMngId == null ? null : cusMngId.trim();
    }

    public String getModelNo() {
        return modelNo;
    }

    public void setModelNo(String modelNo) {
        this.modelNo = modelNo == null ? null : modelNo.trim();
    }

    public String getCusId() {
        return cusId;
    }

    public void setCusId(String cusId) {
        this.cusId = cusId == null ? null : cusId.trim();
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName == null ? null : cusName.trim();
    }

    public String getCusType() {
        return cusType;
    }

    public void setCusType(String cusType) {
        this.cusType = cusType == null ? null : cusType.trim();
//    	this.cusType = cusType;
    }

    public String getContId() {
        return contId;
    }

    public void setContId(String contId) {
        this.contId = contId == null ? null : contId.trim();
    }

    public String getBillId() {
        return billId;
    }

    public void setBillId(String billId) {
        this.billId = billId == null ? null : billId.trim();
    }

    public String getChkType() {
        return chkType;
    }

    public void setChkType(String chkType) {
        this.chkType = chkType == null ? null : chkType.trim();
    }

    public Long getChkNum() {
        return chkNum;
    }

    public void setChkNum(Long chkNum) {
        this.chkNum = chkNum;
    }

    public BigDecimal getChkBln() {
        return chkBln;
    }

    public void setChkBln(BigDecimal chkBln) {
        this.chkBln = chkBln;
    }

    public String getCrtDate() {
        return crtDate;
    }

    public void setCrtDate(String crtDate) {
        this.crtDate = crtDate == null ? null : crtDate.trim();
    }

    public String getRqrFinDate() {
        return rqrFinDate;
    }

    public void setRqrFinDate(String rqrFinDate) {
        this.rqrFinDate = rqrFinDate == null ? null : rqrFinDate.trim();
    }

    public String getRealFinDate() {
        return realFinDate;
    }

    public void setRealFinDate(String realFinDate) {
        this.realFinDate = realFinDate == null ? null : realFinDate.trim();
    }

    public String getTaskProBrId() {
        return taskProBrId;
    }

    public void setTaskProBrId(String taskProBrId) {
        this.taskProBrId = taskProBrId == null ? null : taskProBrId.trim();
    }

    public String getTaskProBrName() {
        return taskProBrName;
    }

    public void setTaskProBrName(String taskProBrName) {
        this.taskProBrName = taskProBrName == null ? null : taskProBrName.trim();
    }

    public String getTskProId() {
        return tskProId;
    }

    public void setTskProId(String tskProId) {
        this.tskProId = tskProId == null ? null : tskProId.trim();
    }

    public String getTskProName() {
        return tskProName;
    }

    public void setTskProName(String tskProName) {
        this.tskProName = tskProName == null ? null : tskProName.trim();
    }

    public String getInputBrId() {
        return inputBrId;
    }

    public void setInputBrId(String inputBrId) {
        this.inputBrId = inputBrId == null ? null : inputBrId.trim();
    }

    public String getInputBrName() {
        return inputBrName;
    }

    public void setInputBrName(String inputBrName) {
        this.inputBrName = inputBrName == null ? null : inputBrName.trim();
    }

    public String getTaskExeId() {
        return taskExeId;
    }

    public void setTaskExeId(String taskExeId) {
        this.taskExeId = taskExeId == null ? null : taskExeId.trim();
    }

    public String getTaskExeName() {
        return taskExeName;
    }

    public void setTaskExeName(String taskExeName) {
        this.taskExeName = taskExeName == null ? null : taskExeName.trim();
    }

    public String getMngBrId() {
        return mngBrId;
    }

    public void setMngBrId(String mngBrId) {
        this.mngBrId = mngBrId == null ? null : mngBrId.trim();
    }

    public String getMngBrName() {
        return mngBrName;
    }

    public void setMngBrName(String mngBrName) {
        this.mngBrName = mngBrName == null ? null : mngBrName.trim();
    }

    public String getChkState() {
        return chkState;
    }

    public void setChkState(String chkState) {
        this.chkState = chkState == null ? null : chkState.trim();
    }

    public String getApproveStatus() {
        return approveStatus;
    }

    public void setApproveStatus(String approveStatus) {
        this.approveStatus = approveStatus == null ? null : approveStatus.trim();
    }

    public String getModifyInd() {
        return modifyInd;
    }

    public void setModifyInd(String modifyInd) {
        this.modifyInd = modifyInd == null ? null : modifyInd.trim();
    }

    public String getCusAssort() {
        return cusAssort;
    }

    public void setCusAssort(String cusAssort) {
        this.cusAssort = cusAssort == null ? null : cusAssort.trim();
    }

    public String getCusAssortReason() {
        return cusAssortReason;
    }

    public void setCusAssortReason(String cusAssortReason) {
        this.cusAssortReason = cusAssortReason == null ? null : cusAssortReason.trim();
    }

    public String getLmtPlanDesc() {
        return lmtPlanDesc;
    }

    public void setLmtPlanDesc(String lmtPlanDesc) {
        this.lmtPlanDesc = lmtPlanDesc == null ? null : lmtPlanDesc.trim();
    }

    public String getCheckFinallyCon() {
        return checkFinallyCon;
    }

    public void setCheckFinallyCon(String checkFinallyCon) {
        this.checkFinallyCon = checkFinallyCon == null ? null : checkFinallyCon.trim();
    }

    public String getMngLmtPlan() {
        return mngLmtPlan;
    }

    public void setMngLmtPlan(String mngLmtPlan) {
        this.mngLmtPlan = mngLmtPlan == null ? null : mngLmtPlan.trim();
    }

    public String getMeetPersons() {
        return meetPersons;
    }

    public void setMeetPersons(String meetPersons) {
        this.meetPersons = meetPersons == null ? null : meetPersons.trim();
    }

    public String getChkPlace() {
        return chkPlace;
    }

    public void setChkPlace(String chkPlace) {
        this.chkPlace = chkPlace == null ? null : chkPlace.trim();
    }

    public String getChkDate() {
        return chkDate;
    }

    public void setChkDate(String chkDate) {
        this.chkDate = chkDate == null ? null : chkDate.trim();
    }

    public String getPrdCode() {
        return prdCode;
    }

    public void setPrdCode(String prdCode) {
        this.prdCode = prdCode == null ? null : prdCode.trim();
    }

    public String getPrdName() {
        return prdName;
    }

    public void setPrdName(String prdName) {
        this.prdName = prdName == null ? null : prdName.trim();
    }

    public String getIsFeedBack() {
        return isFeedBack;
    }

    public void setIsFeedBack(String isFeedBack) {
        this.isFeedBack = isFeedBack == null ? null : isFeedBack.trim();
    }

    public String getFeedBack() {
        return feedBack;
    }

    public void setFeedBack(String feedBack) {
        this.feedBack = feedBack == null ? null : feedBack.trim();
    }

    public String getCusValue() {
        return cusValue;
    }

    public void setCusValue(String cusValue) {
        this.cusValue = cusValue == null ? null : cusValue.trim();
    }

    public String getCusRisk() {
        return cusRisk;
    }

    public void setCusRisk(String cusRisk) {
        this.cusRisk = cusRisk == null ? null : cusRisk.trim();
    }

    public String getCusRiskReason() {
        return cusRiskReason;
    }

    public void setCusRiskReason(String cusRiskReason) {
        this.cusRiskReason = cusRiskReason == null ? null : cusRiskReason.trim();
    }

    public String getOtherReason() {
        return otherReason;
    }

    public void setOtherReason(String otherReason) {
        this.otherReason = otherReason == null ? null : otherReason.trim();
    }

    public Short getReportScore() {
        return reportScore;
    }

    public void setReportScore(Short reportScore) {
        this.reportScore = reportScore;
    }

    public String getAllCreditReportAnalysis() {
        return allCreditReportAnalysis;
    }

    public void setAllCreditReportAnalysis(String allCreditReportAnalysis) {
        this.allCreditReportAnalysis = allCreditReportAnalysis == null ? null : allCreditReportAnalysis.trim();
    }

    public String getCusIndValue() {
        return cusIndValue;
    }

    public void setCusIndValue(String cusIndValue) {
        this.cusIndValue = cusIndValue == null ? null : cusIndValue.trim();
    }

    public String getModifyDesc() {
        return modifyDesc;
    }

    public void setModifyDesc(String modifyDesc) {
        this.modifyDesc = modifyDesc == null ? null : modifyDesc.trim();
    }

    public String getSuggest() {
        return suggest;
    }

    public void setSuggest(String suggest) {
        this.suggest = suggest == null ? null : suggest.trim();
    }

    public String getIsupper() {
        return isupper;
    }

    public void setIsupper(String isupper) {
        this.isupper = isupper == null ? null : isupper.trim();
    }

    public String getLastModifyInd() {
        return lastModifyInd;
    }

    public void setLastModifyInd(String lastModifyInd) {
        this.lastModifyInd = lastModifyInd == null ? null : lastModifyInd.trim();
    }

    public String getLastApprove() {
        return lastApprove;
    }

    public void setLastApprove(String lastApprove) {
        this.lastApprove = lastApprove == null ? null : lastApprove.trim();
    }

    public String getLastCusRisk() {
        return lastCusRisk;
    }

    public void setLastCusRisk(String lastCusRisk) {
        this.lastCusRisk = lastCusRisk == null ? null : lastCusRisk.trim();
    }

    public String getLastMngLmtPlan() {
        return lastMngLmtPlan;
    }

    public void setLastMngLmtPlan(String lastMngLmtPlan) {
        this.lastMngLmtPlan = lastMngLmtPlan == null ? null : lastMngLmtPlan.trim();
    }

    public String getLastCusValue() {
        return lastCusValue;
    }

    public void setLastCusValue(String lastCusValue) {
        this.lastCusValue = lastCusValue == null ? null : lastCusValue.trim();
    }

    public String getApproveEndDate() {
        return approveEndDate;
    }

    public void setApproveEndDate(String approveEndDate) {
        this.approveEndDate = approveEndDate == null ? null : approveEndDate.trim();
    }

    public String getChkMode() {
        return chkMode;
    }

    public void setChkMode(String chkMode) {
        this.chkMode = chkMode == null ? null : chkMode.trim();
    }

    public String getApproveOrg() {
        return approveOrg;
    }

    public void setApproveOrg(String approveOrg) {
        this.approveOrg = approveOrg == null ? null : approveOrg.trim();
    }

    public String getHasAddtionalSuggest() {
        return hasAddtionalSuggest;
    }

    public void setHasAddtionalSuggest(String hasAddtionalSuggest) {
        this.hasAddtionalSuggest = hasAddtionalSuggest == null ? null : hasAddtionalSuggest.trim();
    }

    public String getAddtionalSuggest() {
        return addtionalSuggest;
    }

    public void setAddtionalSuggest(String addtionalSuggest) {
        this.addtionalSuggest = addtionalSuggest == null ? null : addtionalSuggest.trim();
    }
}