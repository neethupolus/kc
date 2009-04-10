/*
 * Copyright 2006-2008 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.irb.lookup;

import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;
import org.kuali.core.bo.BusinessObject;
import org.kuali.core.web.ui.Field;
import org.kuali.core.web.ui.Row;
import org.kuali.kra.bo.Person;
import org.kuali.kra.bo.Rolodex;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.irb.bo.Protocol;
import org.kuali.kra.irb.dao.ProtocolDao;
import org.kuali.kra.irb.document.ProtocolDocument;
import org.kuali.kra.irb.personnel.ProtocolPerson;
import org.kuali.kra.lookup.KraLookupableHelperServiceImpl;

public class ProtocolLookupableHelperServiceImpl extends KraLookupableHelperServiceImpl {    

    private static final String RESEARCH_AREA_CLASS_PATH = "org.kuali.kra.bo.ResearchArea";
    ProtocolDao protocolDao;

    @Override
    public List<? extends BusinessObject> getSearchResults(Map<String, String> fieldValues) {
        // need to set backlocation & docformkey here. Otherwise, they are empty
        super.setBackLocationDocFormKey(fieldValues);
        return protocolDao.getProtocols(fieldValues);
    }

    
    @Override
    public String getActionUrls(BusinessObject businessObject) {
        String editLink =  super.getActionUrls(businessObject);
        ProtocolDocument document = ((Protocol) businessObject).getProtocolDocument();
        return editLink + "&nbsp<a href=\"../DocCopyHandler.do?docId="+document.getDocumentNumber()
            +"&command=displayDocSearchView&documentTypeName="+getDocumentTypeName()+"\">copy</a>";
    }


    /**
     * This override is reset field definition for research area lookup fields & investigator label.
     * @see org.kuali.core.lookup.AbstractLookupableHelperServiceImpl#getRows()
     */
    @Override
    public List<Row> getRows() {
        List<Row> rows =  super.getRows();
        for (Row row : rows) {
            for (Field field : row.getFields()) {
                if (field.getPropertyName().equals(ProtocolLookupConstants.Property.RESEARCH_AREA_CODE)) {
                    super.updateLookupField(field,ProtocolLookupConstants.Property.RESEARCH_AREA_CODE,RESEARCH_AREA_CLASS_PATH);
                }
            }
        }
        return rows;
    }
             
    /**
     * 
     * This is spring bean will be used to get search results.
     * @param protocolDao
     */
    public void setProtocolDao(ProtocolDao protocolDao) {
        this.protocolDao = protocolDao;
    }

    /**
     * This method is for several fields that does not have inquiry created by lookup frame work.
     * @see org.kuali.core.lookup.AbstractLookupableHelperServiceImpl#getInquiryUrl(org.kuali.core.bo.BusinessObject, java.lang.String)
     */
    @Override
    public String getInquiryUrl(BusinessObject bo, String propertyName) {

        BusinessObject inqBo = bo;
        String inqPropertyName = propertyName;
        if (propertyName.equals(ProtocolLookupConstants.Property.LEAD_UNIT_NUMBER)) {
           inqBo = new Unit();
            ((Unit) inqBo).setUnitNumber(((Protocol) bo).getLeadUnitNumber());
            inqPropertyName = ProtocolLookupConstants.Property.UNIT_NUMBER;
        } else if (propertyName.equals(ProtocolLookupConstants.Property.INVESTIGATOR)) {
            Protocol protocol = (Protocol) bo;
            ProtocolPerson principalInvestigator = protocol.getPrincipalInvestigator();
            if (principalInvestigator != null) {
                if (StringUtils.isNotBlank(principalInvestigator.getPersonId())) {
                    inqBo = new Person();
                    ((Person) inqBo).setPersonId(principalInvestigator.getPersonId());
                    inqPropertyName = ProtocolLookupConstants.Property.PERSON_ID;
                } else {
                    if (principalInvestigator.getRolodexId() != null) {
                        inqBo = new Rolodex();
                        ((Rolodex) inqBo).setRolodexId(principalInvestigator.getRolodexId());
                        inqPropertyName = ProtocolLookupConstants.Property.ROLODEX_ID;
                    }
                }
            }
        }
        return super.getInquiryUrl(inqBo, inqPropertyName);
    }

    protected String getHtmlAction() {
        return "protocolProtocol.do";
    }
    
    protected String getDocumentTypeName() {
        return "ProtocolDocument";
    }
    
    protected String getKeyFieldName() {
        return "protocolNumber";
    }

    
}
