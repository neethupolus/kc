/*
 * Copyright 2005-2014 The Kuali Foundation
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
package org.kuali.coeus.propdev.impl.custom;

import org.kuali.coeus.common.framework.custom.CustomDataHelperBase;
import org.kuali.coeus.common.framework.custom.attr.CustomAttributeDocValue;
import org.kuali.coeus.common.framework.custom.attr.CustomAttributeDocument;
import org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocumentForm;
import org.kuali.rice.kew.api.WorkflowDocument;
import java.util.List;
import java.util.Map;

public class ProposalDevelopmentCustomDataHelper extends CustomDataHelperBase<CustomAttributeDocValue> {
    
    private static final long serialVersionUID = 4399783400354474904L;
    private ProposalDevelopmentDocumentForm form;
    
    public ProposalDevelopmentCustomDataHelper(ProposalDevelopmentDocumentForm form) {
        this.form = form;
    }

    @Override
    protected CustomAttributeDocValue getNewCustomData() {
       CustomAttributeDocValue customAttributeDocValue = new  CustomAttributeDocValue();
       customAttributeDocValue.setDocumentNumber(form.getProposalDevelopmentDocument().getDocumentNumber());
       return customAttributeDocValue;
    }

    public List<CustomAttributeDocValue> getCustomDataList() {
        return form.getProposalDevelopmentDocument().getCustomDataList();
    }

    @Override
    public Map<String, CustomAttributeDocument> getCustomAttributeDocuments() {
        return form.getProposalDevelopmentDocument().getCustomAttributeDocuments();
    }

    @Override
    public boolean documentNotRouted() {
        WorkflowDocument doc = form.getProposalDevelopmentDocument().getDocumentHeader().getWorkflowDocument();
        return doc.isSaved() || doc.isInitiated();
    }

}
