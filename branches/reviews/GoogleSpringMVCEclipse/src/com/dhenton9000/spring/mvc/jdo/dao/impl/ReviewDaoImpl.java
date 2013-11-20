package com.dhenton9000.spring.mvc.jdo.dao.impl;

import javax.jdo.JDOHelper;
import javax.jdo.JDOObjectNotFoundException;
import javax.jdo.PersistenceManager;
import javax.jdo.PersistenceManagerFactory;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.datanucleus.exceptions.NucleusObjectNotFoundException;

import com.dhenton9000.spring.mvc.jdo.dao.ReviewDao;
import com.dhenton9000.spring.mvc.jdo.entities.Restaurant;
import com.dhenton9000.spring.mvc.jdo.entities.Review;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class ReviewDaoImpl implements ReviewDao {

	private static PersistenceManagerFactory pmf;
	private static Logger log = LogManager.getLogger(ReviewDaoImpl.class);

	public ReviewDaoImpl() {
		pmf = JDOHelper.getPersistenceManagerFactory("transactions-optional");
	}

	@Override
	public void deleteReview(Long reviewId) {
		PersistenceManager pm = null;
		try {
			pm = pmf.getPersistenceManager();
			Key id = KeyFactory.createKey(REVIEW_ENTITY_NAME, reviewId);
			Review t = pm.getObjectById(Review.class, id);
			pm.deletePersistent(t);
		} catch (NucleusObjectNotFoundException err) {
			log.warn("could not find review with id of " + reviewId
					+ " for delete");

		} finally {
			pm.close();
		}


	}

	@Override
	public void saveReview(Review newReview) {
		PersistenceManager pm = null;
		Key k = newReview.getId();
		String info = "in saveReview ";
		if (k != null) {
			long kvar = k.getId();
			info += "found key in review " + kvar;
		} else {
			throw new RuntimeException("save review requires an existing key");
		}
		if (newReview.getParentRestaurantId() == null) {
			throw new RuntimeException("parent restauarant id cannot be null");
		}
		Review r = null;
		try {
			pm = pmf.getPersistenceManager();
			r = pm.makePersistent(newReview);
			log.debug(info);
		} finally {
			pm.close();
		}

	}

	@Override
	public Review getReview(Long reviewId) {

		if (reviewId == null)
			return null;
		Key id = KeyFactory.createKey(REVIEW_ENTITY_NAME, reviewId);
		Review results = null;
		Review detached = null;
		PersistenceManager pm = null;
		try {
			pm = pmf.getPersistenceManager();

			results = pm.getObjectById(Review.class, id);
			detached = pm.detachCopy(results);
		}

		catch (NucleusObjectNotFoundException err) {
			log.warn("could not find review with id of " + id.getId());

		} catch (JDOObjectNotFoundException err) {
			log.warn("could not find review with id of " + id.getId());

		}

		finally {

			pm.close();
		}

		return detached;

	}

}
