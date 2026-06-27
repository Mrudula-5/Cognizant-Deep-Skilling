package com.cognizant;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

public class MyServiceTest {

    @Test
    void testExternalApi() {

        // Create Mock Object
        ExternalApi mockApi = Mockito.mock(ExternalApi.class);

        // Stub the method
        when(mockApi.getData()).thenReturn("Mock Data");

        // Inject mock object
        MyService service = new MyService(mockApi);

        // Call service
        String result = service.fetchData();

        // Verify
        assertEquals("Mock Data", result);

        System.out.println("Mockito Mocking and Stubbing Successful");
    }
}