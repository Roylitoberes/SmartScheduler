using System.Windows.Input;

namespace MyFirstMauiApp.Behaviors;

public class TapBehavior : Behavior<View>
{
    public static readonly BindableProperty CommandProperty =
        BindableProperty.Create(nameof(Command), typeof(ICommand), typeof(TapBehavior));

    public ICommand Command
    {
        get => (ICommand)GetValue(CommandProperty);
        set => SetValue(CommandProperty, value);
    }

    protected override void OnAttachedTo(View bindable)
    {
        base.OnAttachedTo(bindable);
        var tapGesture = new TapGestureRecognizer();
        tapGesture.Tapped += OnTapped;
        bindable.GestureRecognizers.Add(tapGesture);
    }

    protected override void OnDetachingFrom(View bindable)
    {
        base.OnDetachingFrom(bindable);
        var tapGesture = bindable.GestureRecognizers.OfType<TapGestureRecognizer>().FirstOrDefault();
        if (tapGesture != null)
        {
            tapGesture.Tapped -= OnTapped;
            bindable.GestureRecognizers.Remove(tapGesture);
        }
    }

    private void OnTapped(object? sender, EventArgs e)
    {
        if (Command?.CanExecute(null) == true)
        {
            Command.Execute(null);
        }
    }
}