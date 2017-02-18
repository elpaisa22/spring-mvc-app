package com.springmvc.repositories;

import com.springmvc.models.User;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by Sebastian on 17/2/2017.
 */
public interface UserRepository extends PagingAndSortingRepository<User, Long> {
}
