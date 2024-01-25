#include <stdio.h>                                                                        
#include <stdlib.h>                                                                       
#include <tensorflow/c/c_api.h>                                                           

TF_Buffer* read_file(const char* file);                                                   

void free_buffer(void* data, size_t length) {                                             
        free(data);                                                                       
}                                                                                         

int main() {                                                                              
  // Graph definition from unzipped https://storage.googleapis.com/download.tensorflow.org/models/inception5h.zip
  // which is used in the Go, Java and Android examples                                   
  TF_Buffer* graph_def = read_file("/home/ucaptp0/ml-model-c/639545_tf");                      
  TF_Graph* graph = TF_NewGraph();

  // Import graph_def into graph                                                          
  TF_Status* status = TF_NewStatus();                                                     
  TF_ImportGraphDefOptions* opts = TF_NewImportGraphDefOptions();                         
  TF_GraphImportGraphDef(graph, graph_def, opts, status);
  TF_DeleteImportGraphDefOptions(opts);
  if (TF_GetCode(status) != TF_OK) {
          fprintf(stderr, "\n\nERROR: Unable to import graph %s\n\n", TF_Message(status));        
          return 1;
  }       
  fprintf(stdout, "\n\nSuccessfully imported graph\n\n");                                         
  TF_DeleteStatus(status);
  TF_DeleteBuffer(graph_def);                                                             

  // Use the graph                                                                        
  TF_DeleteGraph(graph);                                                                  
  return 0;
} 

TF_Buffer* read_file(const char* file) {                                                  
  FILE *f = fopen(file, "rb");
  fseek(f, 0, SEEK_END);
  long fsize = ftell(f);                                                                  
  fseek(f, 0, SEEK_SET);  //same as rewind(f);                                            

  void* data = malloc(fsize);                                                             
  fread(data, fsize, 1, f);
  fclose(f);

  TF_Buffer* buf = TF_NewBuffer();                                                        
  buf->data = data;
  buf->length = fsize;                                                                    
  buf->data_deallocator = free_buffer;                                                    
  return buf;
}

// // Assuming you have a TF_Graph *graph, and TF_Status *status

// // Create a session.
// TF_SessionOptions* sess_opts = TF_NewSessionOptions();
// TF_Session* session = TF_NewSession(graph, sess_opts, status);
// TF_DeleteSessionOptions(sess_opts);

// // Assume that you have `input_data` and `input_dims` for the input

// int64_t input_dims[] = {1, input_size}; // replace with actual dimensions
// size_t nbytes = input_dims[0] * input_dims[1] * sizeof(float);

// TF_Tensor* input_tensor = TF_NewTensor(TF_FLOAT, input_dims, 2, input_data, nbytes, &deallocator, 0);

// // Assume that the input op is named "input_op_name" and the output op is named "output_op_name"

// TF_Output input_op = {TF_GraphOperationByName(graph, "input_op_name"), 0};
// TF_Output output_op = {TF_GraphOperationByName(graph, "output_op_name"), 0};

// TF_Output inputs[] = {input_op};
// TF_Tensor* inputs_tensors[] = {input_tensor};

// TF_Output outputs[] = {output_op};
// TF_Tensor* outputs_tensors[] = {NULL};

// // Run the session
// TF_SessionRun(session, NULL, inputs, inputs_tensors, 1, outputs, outputs_tensors, 1, NULL, 0, NULL, status);

// // outputs_tensors[0] now contains the result of the operation
// // Get the data from the tensor
// float* data = (float*)TF_TensorData(outputs_tensors[0]);

// // Get the number of elements in the tensor
// int num_elements = TF_TensorElementCount(outputs_tensors[0]);

// // Open a file for writing
// FILE* file = fopen("output.bin", "wb");
// if (file == NULL) {
//     fprintf(stderr, "Error: Could not open file for writing\n");
//     return 1;
// }

// // Write the data to the file
// fwrite(data, sizeof(float), num_elements, file);

// // Close the file
// fclose(file);


// TF_DeleteTensor(input_tensor);
// TF_DeleteTensor(outputs_tensors[0]);
// TF_DeleteSession(session, status);