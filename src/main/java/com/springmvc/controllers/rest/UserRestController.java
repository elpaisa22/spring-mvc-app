/**
 * 
 */
package com.springmvc.controllers.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.springmvc.datatables.input.Column;
import com.springmvc.datatables.input.DataTablesInput;
import com.springmvc.datatables.input.Order;
import com.springmvc.datatables.output.DataTablesOutput;
import com.springmvc.models.User;
import com.springmvc.repositories.UserRepository;

/**
 * @author Sebastian
 *
 */
@RestController
public class UserRestController {
	
	@Autowired
    private UserRepository repository;

	@RequestMapping(value = "/api/users/list", 
	                method = RequestMethod.POST)
    public @ResponseBody DataTablesOutput users(@ModelAttribute DataTablesInput input) {

		Order order = input.getOrder().get(0);
		Column column = input.getColumns().get(order.getColumn());
		Sort sort = new Sort(Sort.Direction.fromString(order.getDir().toUpperCase()),
				             column.getData());

		int page = input.getStart() % (input.getLength()-1);
		PageRequest request = new PageRequest(page, input.getLength(), sort);

        Iterable<User> userList = this.repository.findAll(request);
        DataTablesOutput result = new DataTablesOutput();
        for (User user : userList) {
			result.add(user);
		}

        Long totalRecords = this.repository.count();
        result.setRecordsFiltered(totalRecords.intValue());
        result.setRecordsTotal(totalRecords.intValue());

        return result;
    }

}
