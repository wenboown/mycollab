/**
 * Copyright © MyCollab
 * <p>
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * <p>
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * <p>
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.mycollab.module.project.view.task;

import com.mycollab.module.project.domain.SimpleTask;
import com.mycollab.module.project.i18n.TaskI18nEnum;
import com.mycollab.module.project.service.TaskService;
import com.mycollab.spring.AppContextUtil;
import com.mycollab.vaadin.UserUIContext;
import com.mycollab.vaadin.ui.RemoveInlineComponentMarker;
import com.mycollab.vaadin.ui.UIUtils;
import com.vaadin.icons.VaadinIcons;
import com.vaadin.ui.Component;
import com.vaadin.ui.CustomField;
import com.vaadin.ui.themes.ValoTheme;
import org.vaadin.viritin.button.MButton;

/**
 * @author MyCollab Ltd
 * @since 5.2.12
 */
public class ToggleTaskSummaryWithChildRelationshipField extends CustomField<SimpleTask> {
    private ToggleTaskSummaryField toggleTaskSummaryField;

    public ToggleTaskSummaryWithChildRelationshipField(final SimpleTask parentTask, final SimpleTask childTask) {
        toggleTaskSummaryField = new ToggleTaskSummaryField(parentTask, false);
        MButton unlinkBtn = new MButton("", clickEvent -> {
            // TODO
//            childTask.setParenttaskid(null);
            TaskService taskService = AppContextUtil.getSpringBean(TaskService.class);
            taskService.updateWithSession(childTask, UserUIContext.getUsername());
            UIUtils.removeChildAssociate(ToggleTaskSummaryWithChildRelationshipField.this, RemoveInlineComponentMarker.class);
        }).withIcon(VaadinIcons.UNLINK).withStyleName(ValoTheme.BUTTON_ICON_ONLY, ValoTheme.BUTTON_ICON_ALIGN_TOP)
                .withDescription(UserUIContext.getMessage(TaskI18nEnum.OPT_REMOVE_PARENT_CHILD_RELATIONSHIP));

        toggleTaskSummaryField.addControl(unlinkBtn);
    }

    @Override
    protected Component initContent() {
        return toggleTaskSummaryField;
    }

    @Override
    protected void doSetValue(SimpleTask simpleTask) {

    }

    @Override
    public SimpleTask getValue() {
        return null;
    }
}
