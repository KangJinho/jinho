package com.nail.rin.dao;


import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nail.rin.dto.Customer;

@Repository
public class CustomerRepository {
	
	@Autowired
	SqlSession session;
	
	public int insert(Customer customer) {
		CustomerMapper mapper = session.getMapper(CustomerMapper.class);
		
		return mapper.insert(customer);
	}
	
	public Customer selectOne(String userid, String userpwd) {
		CustomerMapper mapper = session.getMapper(CustomerMapper.class);
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("userpwd", userpwd);
		Customer customer = mapper.selectOne(map);
		
		return customer;
	} 
}
