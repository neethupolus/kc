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
package org.kuali.kra.irb.committee.bo;

import java.util.LinkedHashMap;

import javax.persistence.Column;

import org.kuali.kra.bo.KraPersistableBusinessObjectBase;

/**
 * A committee type defines what the committee is responsible for.
 * In the initial release of KC, only one type of committee is 
 * supported: IRB.
 */
@SuppressWarnings("serial")
public class CommitteeType extends KraPersistableBusinessObjectBase {

    @Column(name = "COMMITTEE_TYPE_CODE")
    private String committeeTypeCode;
    
    @Column(name = "DESCRIPTION")
    private String description;
    
    /**
     * Constructs a CommitteeType.
     */
    public CommitteeType() {
        
    }
    
    public String getCommitteeTypeCode() {
        return committeeTypeCode;
    }

    public void setCommitteeTypeCode(String committeeTypeCode) {
        this.committeeTypeCode = committeeTypeCode;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @SuppressWarnings("unchecked")
    @Override
    protected LinkedHashMap toStringMapper() {
        LinkedHashMap map = new LinkedHashMap();
        map.put("committeeTypeCode", getCommitteeTypeCode());
        map.put("description", getDescription());
        return map;
    }
}
