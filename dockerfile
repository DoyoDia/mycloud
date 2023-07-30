FROM budtmo/docker-android:emulator_11.0
ENV EMULATOR_DEVICE="Samsung Galaxy S10"
ENV WEB_VNC=true
EXPOSE 6080
RUN --device /dev/kvm
CMD ["docker", "run", "-d", "-p", "6080:6080", "--name", "android-container"]