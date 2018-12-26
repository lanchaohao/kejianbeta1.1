package com.sf.dao.impl;

import com.sf.dao.Update_bank_cardDao;
import com.sf.db.Data_jdbcTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UpdateBankcardDaoImpl implements Update_bank_cardDao {
    @Autowired
    Data_jdbcTemplate jdbcTemplate;
    public int update_bank_card(String user_id,String card) {
        System.out.println(user_id);
        System.out.println(card);
        String sql = "update user set useryinghangka=? where userID=?";
        int num = jdbcTemplate.getJdbcTemplate().update(sql,new Object[]{card,user_id});
        return num;
    }
}
