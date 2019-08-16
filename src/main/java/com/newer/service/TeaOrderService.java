package com.newer.service;

import com.newer.domain.TeaOrder;
import com.newer.mapper.TeaOrferMapper;
import com.newer.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;

public class TeaOrderService {
    private SqlSession sqlSession;
    private TeaOrferMapper teaOrferMapper;

    public TeaOrderService() {
        sqlSession = SqlSessionUtil.getSqlSession();
        teaOrferMapper=sqlSession.getMapper(TeaOrferMapper.class);
    }

    public int addOrder(TeaOrder teaOrder){
        //添加订单业务操作
        int rows=teaOrferMapper.addOrder(teaOrder);
        sqlSession.commit();
        return rows;
    }

    public void close(){
        if(sqlSession!=null){
            SqlSessionUtil.closeSqlSession(sqlSession);
        }
    }
}
