#include <stdio.h>
#include <stdlib.h>
// #include <tensorflow/c/c_api.h>
#include "./include/tensorflow/c/c_api.h"

// int main(void)
// {
//   printf("Hello from TensorFlow C library version %s\n", TF_Version());
//   return 0;
// }

void NoOpDeallocator(void* data, size_t a, void* b) {}

int main()
{
    //********* Read model
    TF_Graph* Graph = TF_NewGraph();
    TF_Status* Status = TF_NewStatus();

    TF_SessionOptions* SessionOpts = TF_NewSessionOptions();
    TF_Buffer* RunOpts = NULL;

    const char* saved_model_dir = "model/"; // Path of the model
    const char* tags = "serve"; // default model serving tag; can change in future
    int ntags = 1;

    TF_Session* Session = TF_LoadSessionFromSavedModel(SessionOpts, RunOpts, saved_model_dir, &tags, ntags, Graph, NULL, Status);
    if(TF_GetCode(Status) == TF_OK)
    {
        printf("TF_LoadSessionFromSavedModel OK\n");
    }
    else
    {
        printf("%s",TF_Message(Status));
    }

    //****** Get input tensor
    int NumInputs = 1;
    TF_Output* Input = malloc(sizeof(TF_Output) * NumInputs);

    TF_Output t0 = {TF_GraphOperationByName(Graph, "serving_default_input_1"), 0};
    if(t0.oper == NULL)
        printf("ERROR: Failed TF_GraphOperationByName serving_default_input_1\n");
    else
	    printf("TF_GraphOperationByName serving_default_input_1 is OK\n");
    
    Input[0] = t0;
    
    //********* Get Output tensor
    int NumOutputs = 1;
    TF_Output* Output = malloc(sizeof(TF_Output) * NumOutputs);

    TF_Output t2 = {TF_GraphOperationByName(Graph, "StatefulPartitionedCall"), 0};
    if(t2.oper == NULL)
        printf("ERROR: Failed TF_GraphOperationByName StatefulPartitionedCall\n");
    else	
	printf("TF_GraphOperationByName StatefulPartitionedCall is OK\n");
    
    Output[0] = t2;
}
