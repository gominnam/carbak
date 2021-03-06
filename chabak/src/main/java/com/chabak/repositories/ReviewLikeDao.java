package com.chabak.repositories;

import com.chabak.vo.ReviewLike;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("reviewLikeDao")
public class ReviewLikeDao {
    @Autowired
    SqlSession sqlSession;

    public int checkReviewLike(ReviewLike reviewLike) {
        int likeCount = sqlSession.selectOne("reviewLike.checkReviewLike",reviewLike);
        return likeCount;
    }

    public int insertReviewLike(ReviewLike reviewLike) {
        int insertCount = sqlSession.insert("reviewLike.insertReviewLike",reviewLike);
        return insertCount;
    }

    public int deleteReviewLike(ReviewLike reviewLike) {
        int deleteCount = sqlSession.insert("reviewLike.deleteReviewLike",reviewLike);
        return deleteCount;
    }


}
