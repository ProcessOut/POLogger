import UIKit
import XCTest
import POSLogger

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func test1() {
        POSLogger.lineLenght = 60
        POSLogger.StartLogBlock("Block numero 1")
        POSLogger.Log("test 1", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.Log("test 2", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.Log("test 3", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.Log("test 4", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.Log("test 5", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.EndLogBlock()
        POSLogger.StartLogBlock("Block numero 2")
        POSLogger.Log("test 1", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.Log("test 2", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.Log("test 3", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.Log("test 4", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.Log("test 5", message: "dfisdhdsfiidisdIDIFSAHIDASFIHDSFISDFHISIDFISPDFIPSDFISDFSDFSDFAIGPDFSSDFADFSPSDFISDFPISDFGISFD")
        POSLogger.EndLogBlock()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
