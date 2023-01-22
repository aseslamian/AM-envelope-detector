# AM-envelope-detector
### Software Radio with Noise Canceling in MATLAB
 
Based on Nyquist theorem double sample rate is needed in order to detect envelope massage. However, **Nyquist-Shannon theorem**
says we can 
get the massage with sampling lower than twice carrier wave based some conditions.
In this interesting Project we designed a low noise amplifier with MAR6+ (IC) which is a wideband amplifier for raido frequencies 
to amplify the signal got from antenna and process sampled signal in MATLAB. we used laptop mic wit sampe rate of 48kHz. Almost all AM radiowave starts from 
around 500kHz to approximately 1.5MHz. So, we could reconstruct the envelope massage of a radio channel with 540KHz carrier wave by sampling rate of 48KHz
(instead of 1MHz Nyquist sample rate).

The output of proocessed signal can be seen in the following folder. Although the voice is full of noise, the voice message is understood to some extent.
