extern int distortionMode;
static int wasDistortionMode;

void adcInterrupt() {
  if (distortionMode && !wasDistortionMode) {
    free (distLookup);
    delay = (int *) malloc (2000*sizeof(int));
    wasDistortionMode = 1;
  }
  else if (!distortionMode && wasDistortionMode) {
    free (delay);
    distLookup = (int *) malloc (2000*sizeof(int));
    wasDistortionMode = 0;
  }

  if (distortionMode) {
    /* Do some distortion */
  }
  else if (!distortionMode) {
    /* Do some delay */
  }
}

int main() {
  if (receivedCommand) {
    if (command == 1) {
      distortionMode = 1;
    }
    else {
      distortionMode = 0;
    }
  }
}
