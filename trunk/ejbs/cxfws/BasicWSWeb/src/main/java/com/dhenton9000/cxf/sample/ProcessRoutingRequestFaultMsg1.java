
package com.dhenton9000.cxf.sample;

import javax.xml.ws.WebFault;


/**
 * This class was generated by Apache CXF 2.4.1
 * 2011-09-02T14:18:56.952-05:00
 * Generated source version: 2.4.1
 */

@WebFault(name = "InventoryProcessResponse", targetNamespace = "http://dhenton9000.inventory/schema/InventoryBusSchema")
public class ProcessRoutingRequestFaultMsg1 extends Exception {
    
    private com.dhenton9000.cxf.sample.InventoryProcessResponse inventoryProcessResponse;

    public ProcessRoutingRequestFaultMsg1() {
        super();
    }
    
    public ProcessRoutingRequestFaultMsg1(String message) {
        super(message);
    }
    
    public ProcessRoutingRequestFaultMsg1(String message, Throwable cause) {
        super(message, cause);
    }

    public ProcessRoutingRequestFaultMsg1(String message, com.dhenton9000.cxf.sample.InventoryProcessResponse inventoryProcessResponse) {
        super(message);
        this.inventoryProcessResponse = inventoryProcessResponse;
    }

    public ProcessRoutingRequestFaultMsg1(String message, com.dhenton9000.cxf.sample.InventoryProcessResponse inventoryProcessResponse, Throwable cause) {
        super(message, cause);
        this.inventoryProcessResponse = inventoryProcessResponse;
    }

    public com.dhenton9000.cxf.sample.InventoryProcessResponse getFaultInfo() {
        return this.inventoryProcessResponse;
    }
}
