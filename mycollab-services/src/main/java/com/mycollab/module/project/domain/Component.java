/*Domain class of table m_prj_component*/
package com.mycollab.module.project.domain;

import com.mycollab.core.arguments.ValuedBean;
import com.mycollab.db.metadata.Column;
import com.mycollab.db.metadata.Table;
import java.time.LocalDateTime;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;

@SuppressWarnings("ucd")
@Table("m_prj_component")
@Alias("Component")
public class Component extends ValuedBean {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.id
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @Column("id")
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.projectId
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @NotNull
    @Column("projectId")
    private Integer projectid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.name
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @NotEmpty
    @Length(max=1000, message="Field value is too long")
    @Column("name")
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.userlead
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @Length(max=45, message="Field value is too long")
    @Column("userlead")
    private String userlead;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.createdUser
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @Length(max=45, message="Field value is too long")
    @Column("createdUser")
    private String createduser;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.sAccountId
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @NotNull
    @Column("sAccountId")
    private Integer saccountid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.lastUpdatedTime
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @Column("lastUpdatedTime")
    private LocalDateTime lastupdatedtime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.createdTime
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @Column("createdTime")
    private LocalDateTime createdtime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.status
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @Length(max=45, message="Field value is too long")
    @Column("status")
    private String status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column m_prj_component.description
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    @Length(max=16777215, message="Field value is too long")
    @Column("description")
    private String description;

    private static final long serialVersionUID = 1;

    public final boolean equals(Object obj) {
        if (obj == null) { return false;}
        if (obj == this) { return true;}
        if (!obj.getClass().isAssignableFrom(getClass())) { return false;}
        Component item = (Component)obj;
        return new EqualsBuilder().append(id, item.id).build();
    }

    public final int hashCode() {
        return new HashCodeBuilder(1753, 969).append(id).build();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.id
     *
     * @return the value of m_prj_component.id
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withId(Integer id) {
        this.setId(id);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.id
     *
     * @param id the value for m_prj_component.id
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.projectId
     *
     * @return the value of m_prj_component.projectId
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Integer getProjectid() {
        return projectid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withProjectid(Integer projectid) {
        this.setProjectid(projectid);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.projectId
     *
     * @param projectid the value for m_prj_component.projectId
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.name
     *
     * @return the value of m_prj_component.name
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withName(String name) {
        this.setName(name);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.name
     *
     * @param name the value for m_prj_component.name
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.userlead
     *
     * @return the value of m_prj_component.userlead
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public String getUserlead() {
        return userlead;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withUserlead(String userlead) {
        this.setUserlead(userlead);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.userlead
     *
     * @param userlead the value for m_prj_component.userlead
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setUserlead(String userlead) {
        this.userlead = userlead;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.createdUser
     *
     * @return the value of m_prj_component.createdUser
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public String getCreateduser() {
        return createduser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withCreateduser(String createduser) {
        this.setCreateduser(createduser);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.createdUser
     *
     * @param createduser the value for m_prj_component.createdUser
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setCreateduser(String createduser) {
        this.createduser = createduser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.sAccountId
     *
     * @return the value of m_prj_component.sAccountId
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Integer getSaccountid() {
        return saccountid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withSaccountid(Integer saccountid) {
        this.setSaccountid(saccountid);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.sAccountId
     *
     * @param saccountid the value for m_prj_component.sAccountId
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setSaccountid(Integer saccountid) {
        this.saccountid = saccountid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.lastUpdatedTime
     *
     * @return the value of m_prj_component.lastUpdatedTime
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public LocalDateTime getLastupdatedtime() {
        return lastupdatedtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withLastupdatedtime(LocalDateTime lastupdatedtime) {
        this.setLastupdatedtime(lastupdatedtime);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.lastUpdatedTime
     *
     * @param lastupdatedtime the value for m_prj_component.lastUpdatedTime
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setLastupdatedtime(LocalDateTime lastupdatedtime) {
        this.lastupdatedtime = lastupdatedtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.createdTime
     *
     * @return the value of m_prj_component.createdTime
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public LocalDateTime getCreatedtime() {
        return createdtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withCreatedtime(LocalDateTime createdtime) {
        this.setCreatedtime(createdtime);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.createdTime
     *
     * @param createdtime the value for m_prj_component.createdTime
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setCreatedtime(LocalDateTime createdtime) {
        this.createdtime = createdtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.status
     *
     * @return the value of m_prj_component.status
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public String getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withStatus(String status) {
        this.setStatus(status);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.status
     *
     * @param status the value for m_prj_component.status
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column m_prj_component.description
     *
     * @return the value of m_prj_component.description
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table m_prj_component
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public Component withDescription(String description) {
        this.setDescription(description);
        return this;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column m_prj_component.description
     *
     * @param description the value for m_prj_component.description
     *
     * @mbg.generated Fri Apr 12 22:39:46 CDT 2019
     */
    public void setDescription(String description) {
        this.description = description;
    }

    public enum Field {
        id,
        projectid,
        name,
        userlead,
        createduser,
        saccountid,
        lastupdatedtime,
        createdtime,
        status,
        description;

        public boolean equalTo(Object value) {
            return name().equals(value);
        }
    }
}