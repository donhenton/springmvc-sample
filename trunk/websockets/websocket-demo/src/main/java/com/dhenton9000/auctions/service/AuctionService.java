/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dhenton9000.auctions.service;

import com.dhenton9000.auctions.model.AuctionItem;

/**
 *
 * @author dhenton
 */
public interface AuctionService {
    AuctionItem getAuctionItem(Integer auctionItemId);
}
