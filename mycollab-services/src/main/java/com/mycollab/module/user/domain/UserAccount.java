/**
 * This file is part of mycollab-services.
 *
 * mycollab-services is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * mycollab-services is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with mycollab-services.  If not, see <http://www.gnu.org/licenses/>.
 */
/*Domain class of table s_user_account*/
package com.mycollab.module.user.domain;

import com.mycollab.core.arguments.ValuedBean;
import com.mycollab.db.metadata.Column;
import com.mycollab.db.metadata.Table;
import java.util.Date;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.hibernate.validator.constraints.Length;

@SuppressWarnings("ucd")
@Table("s_user_account")
public class UserAccount extends ValuedBean {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.id
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Column("id")
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.username
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Length(max=45, message="Field value is too long")
    @Column("username")
    private String username;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.accountId
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Column("accountId")
    private Integer accountid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.isAccountOwner
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Column("isAccountOwner")
    private Boolean isaccountowner;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.roleId
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Column("roleId")
    private Integer roleid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.registeredTime
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Column("registeredTime")
    private Date registeredtime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.registerStatus
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Length(max=45, message="Field value is too long")
    @Column("registerStatus")
    private String registerstatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.lastAccessedTime
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Column("lastAccessedTime")
    private Date lastaccessedtime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.registrationSource
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Length(max=45, message="Field value is too long")
    @Column("registrationSource")
    private String registrationsource;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.lastModuleVisit
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Length(max=45, message="Field value is too long")
    @Column("lastModuleVisit")
    private String lastmodulevisit;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column s_user_account.inviteUser
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    @Length(max=45, message="Field value is too long")
    @Column("inviteUser")
    private String inviteuser;

    private static final long serialVersionUID = 1;

    public final boolean equals(Object obj) {
        if (obj == null) { return false;}
        if (obj == this) { return true;}
        if (!obj.getClass().isAssignableFrom(getClass())) { return false;}
        UserAccount item = (UserAccount)obj;
        return new EqualsBuilder().append(id, item.id).build();
    }

    public final int hashCode() {
        return new HashCodeBuilder(679, 709).append(id).build();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.id
     *
     * @return the value of s_user_account.id
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.id
     *
     * @param id the value for s_user_account.id
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.username
     *
     * @return the value of s_user_account.username
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.username
     *
     * @param username the value for s_user_account.username
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.accountId
     *
     * @return the value of s_user_account.accountId
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public Integer getAccountid() {
        return accountid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.accountId
     *
     * @param accountid the value for s_user_account.accountId
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setAccountid(Integer accountid) {
        this.accountid = accountid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.isAccountOwner
     *
     * @return the value of s_user_account.isAccountOwner
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public Boolean getIsaccountowner() {
        return isaccountowner;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.isAccountOwner
     *
     * @param isaccountowner the value for s_user_account.isAccountOwner
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setIsaccountowner(Boolean isaccountowner) {
        this.isaccountowner = isaccountowner;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.roleId
     *
     * @return the value of s_user_account.roleId
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public Integer getRoleid() {
        return roleid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.roleId
     *
     * @param roleid the value for s_user_account.roleId
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.registeredTime
     *
     * @return the value of s_user_account.registeredTime
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public Date getRegisteredtime() {
        return registeredtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.registeredTime
     *
     * @param registeredtime the value for s_user_account.registeredTime
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setRegisteredtime(Date registeredtime) {
        this.registeredtime = registeredtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.registerStatus
     *
     * @return the value of s_user_account.registerStatus
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public String getRegisterstatus() {
        return registerstatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.registerStatus
     *
     * @param registerstatus the value for s_user_account.registerStatus
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setRegisterstatus(String registerstatus) {
        this.registerstatus = registerstatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.lastAccessedTime
     *
     * @return the value of s_user_account.lastAccessedTime
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public Date getLastaccessedtime() {
        return lastaccessedtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.lastAccessedTime
     *
     * @param lastaccessedtime the value for s_user_account.lastAccessedTime
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setLastaccessedtime(Date lastaccessedtime) {
        this.lastaccessedtime = lastaccessedtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.registrationSource
     *
     * @return the value of s_user_account.registrationSource
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public String getRegistrationsource() {
        return registrationsource;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.registrationSource
     *
     * @param registrationsource the value for s_user_account.registrationSource
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setRegistrationsource(String registrationsource) {
        this.registrationsource = registrationsource;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.lastModuleVisit
     *
     * @return the value of s_user_account.lastModuleVisit
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public String getLastmodulevisit() {
        return lastmodulevisit;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.lastModuleVisit
     *
     * @param lastmodulevisit the value for s_user_account.lastModuleVisit
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setLastmodulevisit(String lastmodulevisit) {
        this.lastmodulevisit = lastmodulevisit;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column s_user_account.inviteUser
     *
     * @return the value of s_user_account.inviteUser
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public String getInviteuser() {
        return inviteuser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column s_user_account.inviteUser
     *
     * @param inviteuser the value for s_user_account.inviteUser
     *
     * @mbggenerated Thu Jul 14 19:06:16 ICT 2016
     */
    public void setInviteuser(String inviteuser) {
        this.inviteuser = inviteuser;
    }

    public enum Field {
        id,
        username,
        accountid,
        isaccountowner,
        roleid,
        registeredtime,
        registerstatus,
        lastaccessedtime,
        registrationsource,
        lastmodulevisit,
        inviteuser;

        public boolean equalTo(Object value) {
            return name().equals(value);
        }
    }
}