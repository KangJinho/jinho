package com.nail.rin.dao;

import java.util.Map;

import com.nail.rin.dto.Customer;

public interface CustomerMapper {
	public int insert(Customer customer);
	public int delete(String userid, String userpwd);
	public Customer selectOne(Map<String, String> map);
	public int update(Customer cust);
	
}
