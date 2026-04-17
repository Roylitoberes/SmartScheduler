package crc64e95e69e34d869711;


public class LocationCallback
	extends com.google.android.gms.location.LocationCallback
	implements
		mono.android.IGCUserPeer
{

	public LocationCallback ()
	{
		super ();
		if (getClass () == LocationCallback.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Location.LocationCallback, Xamarin.GooglePlayServices.Location", "", this, new java.lang.Object[] {  });
		}
	}

	public void onLocationResult (com.google.android.gms.location.LocationResult p0)
	{
		n_onLocationResult (p0);
	}

	private native void n_onLocationResult (com.google.android.gms.location.LocationResult p0);

	public void onLocationAvailability (com.google.android.gms.location.LocationAvailability p0)
	{
		n_onLocationAvailability (p0);
	}

	private native void n_onLocationAvailability (com.google.android.gms.location.LocationAvailability p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
