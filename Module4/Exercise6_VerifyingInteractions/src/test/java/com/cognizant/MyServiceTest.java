package com.cognizant;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.mockito.Mockito.verify;

public class MyServiceTest {

    @Test
    void testVerifyInteraction() {

        // Step 1: Create Mock Object
        ExternalApi mockApi = Mockito.mock(ExternalApi.class);

        // Step 2: Create Service
        MyService service = new MyService(mockApi);

        // Step 3: Call Method
        service.fetchData();

        // Step 4: Verify Interaction
        verify(mockApi).getData();

        System.out.println("Interaction Verified Successfully");
    }
}