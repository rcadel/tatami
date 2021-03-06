<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/template" id="form-success">
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <fmt:message key="tatami.form.success"/>
    </div>
</script>

<script type="text/template" id="form-error">
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <fmt:message key="tatami.form.error"/>
    </div>
</script>

<script type="text/template" id="form-ldap">
    <div class="alert alert-danger">
        <fmt:message key="tatami.user.password.ldap"/>
    </div>
</script>

<script type="text/template" id="follow-button">
    <span class="btn btn-block input-block-level"><fmt:message key="tatami.user.follow"/></span>
</script>

<script type="text/template" id="followed-button">
    <span class="btn btn-primary btn-block input-block-level"><fmt:message key="tatami.user.followed"/></span>
</script>

<script type="text/template" id="edit-profile">
    <span class="btn btn-primary btn-info input-block-level"><fmt:message key="tatami.user.profile.edit"/></span>
</script>

<script type="text/template" id="account-profile">
    <h2>
        <fmt:message key="tatami.account.update.title"/>
    </h2>


    <fieldset>
        <legend>
            <fmt:message key="tatami.account.update.legend"/>
        </legend>

        <div class="control-group">
            <label class="control-label">
                <fmt:message key="tatami.user.email"/>
            </label>

            <div class="controls">
                <input name="login" type="text" disabled="true" class="col-span-12" value="<@= login @>"/>
            </div>
        </div>

        <div class="control-group dashed">
            <label class="control-label">
                <fmt:message key="tatami.user.picture"/>
            </label>

            <div class="controls">

                <div id="updateAvatar" class="dropzone well">
                    <img class="nomargin avatar" src="<@= user.avatar @>" alt=""/>
                    <p class=little-padding-top><fmt:message key="tatami.user.picture.button" /></p>
                    <input id="avatarFile" type="file" name="uploadFile" data-url="/tatami/rest/fileupload/avatar"/>
                </div>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="firstName">
                <fmt:message key="tatami.user.firstName"/>
            </label>

            <div class="controls">
                <input name="firstName" type="text" size="15" maxlength="40" class="input-xlarge col-span-12" value="<@= user.firstName @>"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="lastName">
                <fmt:message key="tatami.user.lastName"/>
            </label>

            <div class="controls">
                <input name="lastName" type="text" id="lastName" size="15" maxlength="40" class="input-xlarge col-span-12" value="<@= user.lastName @>"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="jobTitle">
                <fmt:message key="tatami.user.jobTitle"/>
            </label>

            <div class="controls">
                <input name="jobTitle" type="text" size="15" maxlength="100" class="input-xlarge col-span-12" value="<@= user.jobTitle @>"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="hireDate">
                <fmt:message key="tatami.user.hireDate"/>
            </label>

            <div class="controls">
                <input name="hireDate" type="date"  size="10" maxlength="10" class="input-xlarge col-span-12" value="<@= new Date(user.hireDate).toISOString().substring(0,10) @>"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="phoneNumber">
                <fmt:message key="tatami.user.phoneNumber"/>
            </label>

            <div class="controls">
                <input name="phoneNumber" type="text" size="10" maxlength="20" class="input-xlarge col-span-12" value="<@= user.phoneNumber @>"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="facebook">
                <fmt:message key="tatami.user.facebook"/>
            </label>

            <div class="controls">
                <input type="text" disabled="true" class="col-span-12 socialPrefix" value="https://www.facebook.com/"/>
                <input name="facebook" type="text" size="10" maxlength="250" value="<@= user.facebook @>" class="socialSuffix"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="linkedIn">
                <fmt:message key="tatami.user.linkedIn"/>
            </label>

            <div class="controls">
                <input type="text" disabled="true" class="col-span-12 socialPrefix" value="http://www.linkedin.com/"/>
                <input name="linkedIn" type="text" size="10" maxlength="250" value="<@= user.linkedIn @>" class="socialSuffix"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="viadeo">
                <fmt:message key="tatami.user.viadeo"/>
            </label>

            <div class="controls">
                <input type="text" disabled="true" class="col-span-12 socialPrefix" value="http://www.viadeo.com/"/>
                <input name="viadeo" type="text" size="10" maxlength="250" value="<@= user.viadeo @>" class="socialSuffix"/>
            </div>
        </div>
<%--
        <div class="control-group">
            <label class="control-label" for="skype">
                <fmt:message key="tatami.user.skype"/>
            </label>

            <div class="controls">
                <input type="text" disabled="true" class="col-span-12 socialPrefix" value="http://www.skype.com/"/>
                <input name="skype" type="text" size="10" maxlength="250" value="<@= user.skype @>" class="socialSuffix"/>
            </div>
        </div>
        --%>

        <div class="control-group">
            <label class="control-label" for="twitter">
                <fmt:message key="tatami.user.twitter"/>
            </label>

            <div class="controls">
                <input type="text" disabled="true" class="col-span-12 socialPrefix" value="https://twitter.com/"/>
                <input name="twitter" type="text" size="10" maxlength="250" value="<@= user.twitter @>" class="socialSuffix"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="googlePlus">
                <fmt:message key="tatami.user.googlePlus"/>
            </label>

            <div class="controls">
                <input type="text" disabled="true" class="col-span-12 socialPrefix" value="https://plus.google.com/"/>
                <input name="googlePlus" type="text" size="10" maxlength="250" value="<@= user.googlePlus @>" class="socialSuffix"/>
            </div>
        </div>

        <div class="form-actions">
            <button type="submit" class="input-xlarge btn btn-primary btn-block">
                <fmt:message key="tatami.form.save"/>
            </button>
        </div>

        <div class="return"/>
    </fieldset>
</script>

<script type="text/template" id="account-destroy">
    <fieldset>
        <legend><fmt:message key="tatami.user.suppress"/></legend>
        <div class="return"/>
        <div class="form-actions">
            <button type="submit" class="input-xlarge btn btn-danger btn-block" onclick="return(confirm('<fmt:message key="tatami.user.suppress.confirmation"/>'));">
                <fmt:message key="tatami.user.suppress"/>
            </button>
        </div>
    </fieldset>
</script>

<script type="text/template" id="account-users-menu">
    <h2>Annuaire des utilisateurs</h2>
    <div class="row-fluid">
        <button></button>
    </div>
</script>

<script type="text/template" id="account-preferences">
    <h2>
        <fmt:message key="tatami.menu.preferences"/>
    </h2>

        <legend>
            <fmt:message key="tatami.preferences.notifications"/>
        </legend>

        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input name="mentionEmail" type="checkbox" <@ if(preferences.mentionEmail){ @> checked="true" <@ } @>/> <fmt:message key="tatami.preferences.notifications.email.mention"/>
                </label>
            </div>
            <div class="controls">
                <label class="checkbox">
                    <input name="dailyDigest" type="checkbox" <@ if(preferences.dailyDigest){ @> checked="true" <@ } @>/> <fmt:message key="tatami.preferences.notifications.email.dailyDigest"/>
                </label>
            </div>
            <div class="controls">
                <label class="checkbox">
                    <input name="weeklyDigest" type="checkbox" <@ if(preferences.weeklyDigest){ @> checked="true" <@ } @>/> <fmt:message key="tatami.preferences.notifications.email.weeklyDigest"/>
                </label>
            </div>
            <div class="controls">
                <label class="checkbox">
                    <input name="rssUidActive" type="checkbox" <@ if (preferences.rssUidActive) {@> checked="true" <@ } @>/>  <fmt:message key="tatami.preferences.notifications.rss.timeline"/>
                </label>
                <@ if (preferences.rssUidActive) { @> <a href="/tatami/syndic/<@=preferences.rssUid@>" ><fmt:message key="tatami.preferences.notifications.rss.timeline.link"/> </a><@ } @>
            </div>
        </div>
    </fieldset>

    <fieldset>
        <div class="form-actions">
            <button type="submit" class="input-xlarge btn btn-primary btn-block">
                <fmt:message key="tatami.form.save"/>
            </button>
        </div>

        <div class="return"/>
    </fieldset>

</script>

<script type="text/template" id="account-password-newPasswordConfirmation">
    <fmt:message key="tatami.user.new.password.confirmation.error"/>
</script>

<script type="text/template" id="account-password">
    <h2>
        <fmt:message key="tatami.menu.password"/>
    </h2>

    <fieldset>
        <legend>
            <fmt:message key="tatami.user.password.legend"/>
        </legend>

        <div class="control-group">
            <label class="control-label" for="oldPassword">
                <fmt:message key="tatami.user.old.password"/>
            </label>

            <div class="controls">
                <input name="oldPassword" type="password" required="required" size="15" maxlength="40" class="input-xlarge col-span-12" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="newPassword">
                <fmt:message key="tatami.user.new.password"/>
            </label>

            <div class="controls">
                <input name="newPassword" type="password" required="required" ize="15" maxlength="40" class="input-xlarge col-span-12"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="newPasswordConfirmation">
                <fmt:message key="tatami.user.new.password.confirmation"/>
            </label>

            <div class="controls">
                <input name="newPasswordConfirmation" type="password" required="required" size="15" maxlength="40" class="input-xlarge col-span-12"/>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-primary btn-block">
                <fmt:message key="tatami.form.save"/>
            </button>
        </div>
        <div class="return"/>
    </fieldset>

</script>

<script type="text/template" id="users-menu">
    <ul class="nav nav-tabs">
        <li>
            <a href ="#/users">
                <fmt:message key="tatami.account.users.myfriends"/>
            </a>
        </li>
        <li>
            <a href ="#/users/recommended">
                <fmt:message key="tatami.account.users.recommended"/>
            </a>
        </li>
        <li>
            <a href ="#/users/search">
                <fmt:message key="tatami.search.placeholder"/>
            </a>
        </li>
    </ul>
</script>

<script type="text/template" id="users-header">
    <tr>
        <th><fmt:message key="tatami.username"/></th>
        <th><fmt:message key="tatami.user.lastName"/></th>
        <th/>
    </tr>
</script>

<script type="text/template" id="users-item">
    <td>
        <img class="avatar img-small" src="<@= avatar @>"
         alt="<@= [firstName,lastName].filter(function(value){return value;}).join(' ') @>">
        <a href="/tatami/home/users/<@= username @>" title="<fmt:message key="tatami.user.profile.show"/> <@= ['@' + username,firstName,lastName].filter(function(value){return value;}).join(' ') @>">
            <@= username @>
        </a>
    </td>
    <td>
        <@= [firstName,lastName].filter(function(value){return value;}).join(' ') @>
    </td>
    <td class="follow"/>
</script>

<script type="text/template" id="groups-menu">
    <ul class="nav nav-tabs">
        <li>
            <a href ="#/groups">
                <fmt:message key="tatami.account.groups.mygroups"/>
            </a>
        </li>
        <li>
            <a href ="#/groups/recommended">
                <fmt:message key="tatami.account.groups.recommended"/>
            </a>
        </li>
        <li>
            <a href ="#/groups/search">
                <fmt:message key="tatami.search.placeholder"/>
            </a>
        </li>
    </ul>
</script>

<script type="text/template" id="groups-form">
    <h2>
        <fmt:message key="tatami.group.name"/>
    </h2>
    <@ if (typeof groupId === 'undefined') { @>
        <button class="show btn btn-xlarge btn-block btn-primary" type="button">
            <fmt:message key="tatami.group.add"/>
        </button>
    <@ } @>
    <fieldset <@ if (typeof groupId === 'undefined') { @>class="hide" <@ } @>>
        <legend>
            <@ if (typeof groupId === 'undefined') { @>
                <fmt:message key="tatami.group.add"/>
            <@ } else { @>
                <fmt:message key="tatami.group.edit.details"/>
            <@ } @>
        </legend>
        <div class="control-group">
            <label class="control-label" for="name">
                <fmt:message key="tatami.group.add.title"/>
            </label>

            <div class="controls">
                <input name="name" type="text" required="required" size="30" maxlength="50" class="input-xlarge col-span-12" value="<@= name @>" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="description">
                <fmt:message key="tatami.group.add.description"/>
            </label>

            <div class="controls">
                <textarea name="description" class="input-xlarge col-span-12"><@= description @></textarea>
            </div>
        </div>

        <@ if (typeof groupId === 'undefined') { @>
            <div class="control-group">
                <label class="control-label" for="publicGroup">
                    <fmt:message key="tatami.group.add.access"/>
                </label>

                <div class="controls">
                    <label class="radio">
                    <input type="radio" name="publicGroup" value="public" <@ if (publicGroup) { @> checked<@ } @> required>
                    <fmt:message key="tatami.group.add.public"/>
                    </label>
                    <label class="radio">
                    <input type="radio" name="publicGroup" value="private" <@ if (!publicGroup) { @> checked<@ } @> required>
                    <fmt:message key="tatami.group.add.private"/>
                    </label>
                </div>
            </div>

            <div class="alertColor">
                <i class="glyphicon glyphicon-warning-sign"></i>
                <fmt:message key="tatami.group.add.public.alert"/>
            </div>
        <@ } else { @>
            <div class="control-group">
                <label class="control-label" for="archivedGroup">
                    <fmt:message key="tatami.group.archive"/>
                </label>

                <div class="controls">
                    <label class="radio">
                        <input type="radio" name="archivedGroup" value="true" <@ if (archivedGroup) { @> checked<@ } @> required>
                        <fmt:message key="tatami.group.archive.true"/>
                    </label>
                    <label class="radio">
                        <input type="radio" name="archivedGroup" value="false" <@ if (!archivedGroup) { @> checked<@ } @> required>
                        <fmt:message key="tatami.group.archive.false"/>
                    </label>
                </div>
            </div>

            <div class="alert">
                <i class="icon-warning-sign"></i>
                <fmt:message key="tatami.group.archive.alert"/>
            </div>
        <@ } @>

        <div class="form-actions">
            <@ if (typeof groupId === 'undefined') { @>
                <button type="submit" class="btn btn-success col-span-7 little-marge-right">
                    <fmt:message key="tatami.form.save"/>
                </button>
                <button type="reset" class="btn btn-danger col-span-4">
                    <fmt:message key="tatami.form.cancel"/>
                </button>
            <@ } else { @>
                <button type="submit" class="btn btn-success col-span-12">
                    <fmt:message key="tatami.form.save"/>
                </button>
            <@ } @>
        </div>

    </fieldset>

    <br/>
    <div class="return"/>
    <br/>

</script>

<script type="text/template" id="groups-form-adduser">
    <fieldset>
        <legend>
                <fmt:message key="tatami.group.edit.member.add"/>
        </legend>
        <div class="control-group">
            <label class="control-label" for="username">
                <fmt:message key="tatami.username"/>
            </label>

            <div class="controls">
                <input name="username" type="text" autocomplete="off" required="required" class="input-xlarge col-span-12"/>
            </div>
        </div>

        <div class="form-actions">
            <button type="submit" class="btn btn-success col-span-12">
                <fmt:message key="tatami.form.save"/>
            </button>
        </div>

    </fieldset>

    <br/>
    <div class="return"/>
    <br/>
</script>

<script type="text/template" id="groups-form-adduser-success">
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <fmt:message key="tatami.group.edit.member.add.success"/>
    </div>
</script>

<script type="text/template" id="groups-form-adduser-error">
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <fmt:message key="tatami.group.edit.member.add.error"/>
    </div>

</script>

<script type="text/template" id="groups-header">
    <tr>
        <th><fmt:message key="tatami.group.name"/></th>
        <th><fmt:message key="tatami.group.add.access"/></th>
        <th><fmt:message key="tatami.group.counter"/></th>
        <th/>
    </tr>
</script>

<script type="text/template" id="groups-item">
    <td>
        <a href="/tatami/home/groups/<@= groupId @>" title="<@= description @>"><@= name @></a>
    </td>
    <td>
        <@ if(publicGroup && !archivedGroup) { @>
            <span class="label label-warning"><fmt:message key="tatami.group.add.public"/></span>
        <@ } else if(publicGroup && archivedGroup || !publicGroup && archivedGroup) { @>
            <span class="label"><fmt:message key="tatami.group.add.archived"/></span>
        <@ } else {@>
            <span class="label label-info"><fmt:message key="tatami.group.add.private"/></span>
        <@ } @>
    </td>
    <td>
        <@= counter @>
    </td>
</script>

<script type="text/template" id="groups-admin">
    <a class="btn btn-primary btn-block" href="#/groups/<@= groupId@>">
        <fmt:message key="tatami.group.edit.link"/>
    </a>
</script>

<script type="text/template" id="groups-join">
    <button type="button" class="btn btn-block">
        <fmt:message key="tatami.group.join.group"/>
    </button>
</script>

<script type="text/template" id="groups-leave">
    <button type="button" class="btn btn-danger btn-block">
        <fmt:message key="tatami.group.edit.quit"/>
    </button>
</script>

<script type="text/template" id="usergroup-header">
    <tr>
        <th><fmt:message key="tatami.username"/></th>
        <th><fmt:message key="tatami.user.lastName"/></th>
        <th><fmt:message key="tatami.group.role"/></th>
    </tr>
</script>

<script type="text/template" id="usergroup-item">
    <td style="text-align: left">
        <img class="avatar img-small" src="<@=avatar@>" alt="<@= [firstName,lastName].filter(function(value){return value;}).join(' ') @>">
        <a href="/tatami/profile/<@= username @>/">
            <@= username @>
        </a>
    </td>
    <td>
        <@= [firstName,lastName].filter(function(value){return value;}).join(' ') @>
    </td>
    <td>
        <@ if(role === 'ADMIN'){ @>
        <fmt:message key="tatami.group.role.admin"/>
        <@ } else { @>
        <fmt:message key="tatami.group.role.member"/>
        <@ } @>
    </td>
    <@ if(admin){ @>
    <td>
        <@ if (window.username !== username) { @>
        <button type="button" class="btn btn-success input-block-level delete">
            <fmt:message key="tatami.group.edit.member.delete"/>
        </button>
        <@ } @>
    </td>
    <@ } @>
</script>

<script type="text/template" id="tags-menu">
    <ul class="nav nav-tabs">
        <li>
            <a href ="#/tags">
                <fmt:message key="tatami.account.tags.mytags"/>
            </a>
        </li>
        <li>
            <a href ="#/tags/recommended">
                <fmt:message key="tatami.account.tags.recommended"/>
            </a>
        </li>
        <li>
            <a href ="#/tags/search">
                <fmt:message key="tatami.search.placeholder"/>
            </a>
        </li>
    </ul>
</script>

<script type="text/template" id="tags-header">
    <tr>
        <th><fmt:message key="tatami.tag"/></th>
        <th/>
    </tr>
</script>

<script type="text/template" id="tags-item">
    <td>
        <a href="/tatami/#/tags/<@= name @>" title="<@= name @>"><@= name @></a>
    </td>
    <td class="follow">
        <@ if (followed) { @>
            <span class="btn btn-primary btn-block">
                <fmt:message key="tatami.user.followed"/>
            </span>
        <@ } else { @>
            <span class="btn btn-block">
                <fmt:message key="tatami.user.follow"/>
            </span>
        <@ } @>
    </td>
</script>

<script type="text/template" id="files-quota">

    <div class="progress">
        <@ if(quota < 50){@>
        <div class="progress-bar progress-bar-success" style="width: <@= quota @>%;"></div>
        <@ }else if(quota > 50 && quota < 80) {@>
        <div class="progress-bar progress-bar-warning" style="width: <@= quota @>%;"></div>
        <@ }else{@>
        <div class="progress-bar progress-bar-danger" style="width: <@= quota @>%;"></div>
        <@ } @>
        <span class="quota"><@= quota @>%</span>
    </div>
</script>

<script type="text/template" id="files-menu">
    <h2><fmt:message key="tatami.menu.files"/></h2>
    <span class="file-infos"></span>
</script>

<script type="text/template" id="files-header">
<thead>
    <tr>
     <th><fmt:message key="tatami.user.file.name"/></th>
     <th><fmt:message key="tatami.user.file.size"/></th>
     <th><fmt:message key="tatami.user.file.creation.date"/></th>
     <th></th>
    </tr>
</thead>
</script>

<script type="text/template" id="files-item">
    <td><a href="/tatami/file/<@= attachmentId @>/<@= filename @>" target="_blank"><@= filename @></a></td>
    <td><@= (size/1000) @> kb</td>
    <td><@= prettyPrintCreationDate @> </td>
    <td>
        <span class="btn btn-primary btn-block">
                <fmt:message key="tatami.user.status.delete"/>
        </span>
    </td>
</script>

<script type="text/template" id="files-pagination">
    <ul class="pager">
        <li class="previous"><a href="#">Previous</a></li>
        <li class="next"><a href="#">Next</a></li>
    </ul>
</script>

<script type="text/template" id="delete-file-success">
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <fmt:message key="tatami.user.file.delete.success"/>
    </div>
</script>

<script type="text/template" id="delete-file-error">
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <fmt:message key="tatami.user.file.delete.error"/>
    </div>
</script>

<script type="text/template" id="search-filter">
    <form>
        <input id="block_filter" type="text" class="search-query col-span-12" name="result_filter" autocomplete="off" placeholder="<fmt:message key="tatami.search.filter"/>">
    </form>
    <br />
</script>